
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource_pool {int pipe_count; TYPE_1__* funcs; } ;
struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct pipe_ctx {scalar_t__ stream; int plane_state; } ;
struct dc_state {struct resource_context res_ctx; } ;
struct TYPE_2__ {struct pipe_ctx* (* acquire_idle_pipe_for_layer ) (struct dc_state*,struct resource_pool const*,scalar_t__) ;} ;


 struct pipe_ctx* stub1 (struct dc_state*,struct resource_pool const*,scalar_t__) ;

__attribute__((used)) static struct pipe_ctx *acquire_free_pipe_for_head(
  struct dc_state *context,
  const struct resource_pool *pool,
  struct pipe_ctx *head_pipe)
{
 int i;
 struct resource_context *res_ctx = &context->res_ctx;

 if (!head_pipe->plane_state)
  return head_pipe;


 for (i = pool->pipe_count - 1; i >= 0; i--) {
  if (res_ctx->pipe_ctx[i].stream == head_pipe->stream &&
    !res_ctx->pipe_ctx[i].plane_state) {
   return &res_ctx->pipe_ctx[i];
  }
 }






 if (!pool->funcs->acquire_idle_pipe_for_layer)
  return ((void*)0);

 return pool->funcs->acquire_idle_pipe_for_layer(context, pool, head_pipe->stream);
}
