
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {int * out_transfer_func; int sink; } ;


 int dc_sink_release (int ) ;
 int dc_transfer_func_release (int *) ;

__attribute__((used)) static void destruct(struct dc_stream_state *stream)
{
 dc_sink_release(stream->sink);
 if (stream->out_transfer_func != ((void*)0)) {
  dc_transfer_func_release(stream->out_transfer_func);
  stream->out_transfer_func = ((void*)0);
 }
}
