
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

set runtimepath+=~/.vim-orbacle/vim-ruby
set runtimepath+=~/.vim-orbacle/LanguageClient-neovim

set hidden

let g:LanguageClient_serverCommands = {'ruby': ['orbaclerun', 'file-server']}
nnoremap J :call LanguageClient_textDocument_definition()<CR>
nnoremap T :call LanguageClient_textDocument_hover()<CR>
nnoremap ,ls :LanguageClientStart<CR>
nnoremap ,lr :LanguageClientStop<CR>:LanguageClientStart<CR>
let g:LanguageClient_loggingFile = '/tmp/LanguageLog.log'
let g:LanguageClient_loggingLevel = 'DEBUG'
let g:LanguageClient_waitOutputTimeout = 240
