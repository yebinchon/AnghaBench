
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_ctx {struct pipe_ctx* bottom_pipe; TYPE_1__* plane_state; } ;
struct TYPE_2__ {scalar_t__ visible; } ;



bool is_lower_pipe_tree_visible(struct pipe_ctx *pipe_ctx)
{
 if (pipe_ctx->plane_state && pipe_ctx->plane_state->visible)
  return 1;
 if (pipe_ctx->bottom_pipe && is_lower_pipe_tree_visible(pipe_ctx->bottom_pipe))
  return 1;
 return 0;
}
