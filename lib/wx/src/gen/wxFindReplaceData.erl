%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 2008-2009. All Rights Reserved.
%% 
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%% 
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%% 
%% %CopyrightEnd%
%% This file is generated DO NOT EDIT

%% @doc See external documentation: <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html">wxFindReplaceData</a>.
%% @type wxFindReplaceData().  An object reference, The representation is internal
%% and can be changed without notice. It can't be used for comparsion
%% stored on disc or distributed for use on other nodes.

-module(wxFindReplaceData).
-include("wxe.hrl").
-export([destroy/1,getFindString/1,getFlags/1,getReplaceString/1,new/0,new/1,
  setFindString/2,setFlags/2,setReplaceString/2]).

%% inherited exports
-export([parent_class/1]).

%% @hidden
parent_class(_Class) -> erlang:error({badtype, ?MODULE}).

%% @spec () -> wxFindReplaceData()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html#wxfindreplacedatawxfindreplacedata">external documentation</a>.
new() ->
  wxe_util:construct(?wxFindReplaceData_new_0,
  <<>>).

%% @spec (Flags::integer()) -> wxFindReplaceData()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html#wxfindreplacedatawxfindreplacedata">external documentation</a>.
new(Flags)
 when is_integer(Flags) ->
  wxe_util:construct(?wxFindReplaceData_new_1,
  <<Flags:32/?UI>>).

%% @spec (This::wxFindReplaceData()) -> string()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html#wxfindreplacedatagetfindstring">external documentation</a>.
getFindString(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxFindReplaceData),
  wxe_util:call(?wxFindReplaceData_GetFindString,
  <<ThisRef:32/?UI>>).

%% @spec (This::wxFindReplaceData()) -> string()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html#wxfindreplacedatagetreplacestring">external documentation</a>.
getReplaceString(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxFindReplaceData),
  wxe_util:call(?wxFindReplaceData_GetReplaceString,
  <<ThisRef:32/?UI>>).

%% @spec (This::wxFindReplaceData()) -> integer()
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html#wxfindreplacedatagetflags">external documentation</a>.
getFlags(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxFindReplaceData),
  wxe_util:call(?wxFindReplaceData_GetFlags,
  <<ThisRef:32/?UI>>).

%% @spec (This::wxFindReplaceData(), Flags::integer()) -> ok
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html#wxfindreplacedatasetflags">external documentation</a>.
setFlags(#wx_ref{type=ThisT,ref=ThisRef},Flags)
 when is_integer(Flags) ->
  ?CLASS(ThisT,wxFindReplaceData),
  wxe_util:cast(?wxFindReplaceData_SetFlags,
  <<ThisRef:32/?UI,Flags:32/?UI>>).

%% @spec (This::wxFindReplaceData(), Str::string()) -> ok
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html#wxfindreplacedatasetfindstring">external documentation</a>.
setFindString(#wx_ref{type=ThisT,ref=ThisRef},Str)
 when is_list(Str) ->
  ?CLASS(ThisT,wxFindReplaceData),
  Str_UC = unicode:characters_to_binary([Str,0]),
  wxe_util:cast(?wxFindReplaceData_SetFindString,
  <<ThisRef:32/?UI,(byte_size(Str_UC)):32/?UI,(Str_UC)/binary, 0:(((8- ((0+byte_size(Str_UC)) band 16#7)) band 16#7))/unit:8>>).

%% @spec (This::wxFindReplaceData(), Str::string()) -> ok
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxfindreplacedata.html#wxfindreplacedatasetreplacestring">external documentation</a>.
setReplaceString(#wx_ref{type=ThisT,ref=ThisRef},Str)
 when is_list(Str) ->
  ?CLASS(ThisT,wxFindReplaceData),
  Str_UC = unicode:characters_to_binary([Str,0]),
  wxe_util:cast(?wxFindReplaceData_SetReplaceString,
  <<ThisRef:32/?UI,(byte_size(Str_UC)):32/?UI,(Str_UC)/binary, 0:(((8- ((0+byte_size(Str_UC)) band 16#7)) band 16#7))/unit:8>>).

%% @spec (This::wxFindReplaceData()) -> ok
%% @doc Destroys this object, do not use object again
destroy(Obj=#wx_ref{type=Type}) -> 
  ?CLASS(Type,wxFindReplaceData),
  wxe_util:destroy(?DESTROY_OBJECT,Obj),
  ok.
