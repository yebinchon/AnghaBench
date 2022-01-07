
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct dc_stream_status {int dummy; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {size_t stream_count; struct dc_stream_status* stream_status; struct dc_stream_state** streams; } ;



__attribute__((used)) static struct dc_stream_status *stream_get_status(
 struct dc_state *ctx,
 struct dc_stream_state *stream)
{
 uint8_t i;

 for (i = 0; i < ctx->stream_count; i++) {
  if (stream == ctx->streams[i]) {
   return &ctx->stream_status[i];
  }
 }

 return ((void*)0);
}
