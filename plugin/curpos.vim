" cursor to previous position in a file
" Credit: some SO post
function! VIMRC_CursorToPreviousPosition()
  if line("'\"") > 1 && line("'\"") <= line('$')
    execute 'normal! g`"'
  endif
endfunction
autocmd BufReadPost * :call VIMRC_CursorToPreviousPosition()
