
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_ctx {TYPE_1__* plane_state; struct pipe_ctx* top_pipe; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_2__ {scalar_t__ layer_index; } ;


 scalar_t__ is_rgb_cspace (int) ;

__attribute__((used)) static bool dcn10_is_rear_mpo_fix_required(struct pipe_ctx *pipe_ctx, enum dc_color_space colorspace)
{
 if (pipe_ctx->plane_state && pipe_ctx->plane_state->layer_index > 0 && is_rgb_cspace(colorspace)) {
  if (pipe_ctx->top_pipe) {
   struct pipe_ctx *top = pipe_ctx->top_pipe;

   while (top->top_pipe)
    top = top->top_pipe;
   if (top->plane_state && top->plane_state->layer_index == 0)
    return 1;
  }
 }
 return 0;
}
