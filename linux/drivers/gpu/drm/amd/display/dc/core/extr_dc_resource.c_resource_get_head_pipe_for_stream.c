
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct pipe_ctx {int prev_odm_pipe; int top_pipe; struct dc_stream_state* stream; } ;
struct dc_stream_state {int dummy; } ;


 int MAX_PIPES ;

struct pipe_ctx *resource_get_head_pipe_for_stream(
  struct resource_context *res_ctx,
  struct dc_stream_state *stream)
{
 int i;

 for (i = 0; i < MAX_PIPES; i++) {
  if (res_ctx->pipe_ctx[i].stream == stream
    && !res_ctx->pipe_ctx[i].top_pipe
    && !res_ctx->pipe_ctx[i].prev_odm_pipe)
   return &res_ctx->pipe_ctx[i];
 }
 return ((void*)0);
}
