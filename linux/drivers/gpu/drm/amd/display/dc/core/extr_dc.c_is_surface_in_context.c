
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_ctx {struct dc_plane_state const* plane_state; } ;
struct TYPE_2__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_1__ res_ctx; } ;
struct dc_plane_state {int dummy; } ;


 int MAX_PIPES ;

__attribute__((used)) static bool is_surface_in_context(
  const struct dc_state *context,
  const struct dc_plane_state *plane_state)
{
 int j;

 for (j = 0; j < MAX_PIPES; j++) {
  const struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[j];

  if (plane_state == pipe_ctx->plane_state) {
   return 1;
  }
 }

 return 0;
}
