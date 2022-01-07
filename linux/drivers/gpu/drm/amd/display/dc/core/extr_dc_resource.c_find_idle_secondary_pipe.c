
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int pipe_count; } ;
struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct pipe_ctx {int pipe_idx; int * stream; } ;



struct pipe_ctx *find_idle_secondary_pipe(
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  const struct pipe_ctx *primary_pipe)
{
 int i;
 struct pipe_ctx *secondary_pipe = ((void*)0);
 if (primary_pipe) {
  int preferred_pipe_idx = (pool->pipe_count - 1) - primary_pipe->pipe_idx;
  if (res_ctx->pipe_ctx[preferred_pipe_idx].stream == ((void*)0)) {
   secondary_pipe = &res_ctx->pipe_ctx[preferred_pipe_idx];
   secondary_pipe->pipe_idx = preferred_pipe_idx;
  }
 }





 if (!secondary_pipe)
  for (i = pool->pipe_count - 1; i >= 0; i--) {
   if (res_ctx->pipe_ctx[i].stream == ((void*)0)) {
    secondary_pipe = &res_ctx->pipe_ctx[i];
    secondary_pipe->pipe_idx = i;
    break;
   }
  }

 return secondary_pipe;
}
