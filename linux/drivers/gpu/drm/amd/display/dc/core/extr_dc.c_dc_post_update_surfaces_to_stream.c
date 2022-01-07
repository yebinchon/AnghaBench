
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* pipe_ctx; } ;
struct dc_state {TYPE_2__ res_ctx; } ;
struct TYPE_7__ {int (* optimize_bandwidth ) (struct dc*,struct dc_state*) ;int (* disable_plane ) (struct dc*,TYPE_4__*) ;} ;
struct dc {int optimized_required; TYPE_3__ hwss; TYPE_1__* res_pool; scalar_t__ optimize_seamless_boot; struct dc_state* current_state; } ;
struct TYPE_8__ {int pipe_idx; int * plane_state; int * stream; } ;
struct TYPE_5__ {int pipe_count; } ;


 int post_surface_trace (struct dc*) ;
 int stub1 (struct dc*,TYPE_4__*) ;
 int stub2 (struct dc*,struct dc_state*) ;

bool dc_post_update_surfaces_to_stream(struct dc *dc)
{
 int i;
 struct dc_state *context = dc->current_state;

 if (!dc->optimized_required || dc->optimize_seamless_boot)
  return 1;

 post_surface_trace(dc);

 for (i = 0; i < dc->res_pool->pipe_count; i++)
  if (context->res_ctx.pipe_ctx[i].stream == ((void*)0) ||
      context->res_ctx.pipe_ctx[i].plane_state == ((void*)0)) {
   context->res_ctx.pipe_ctx[i].pipe_idx = i;
   dc->hwss.disable_plane(dc, &context->res_ctx.pipe_ctx[i]);
  }

 dc->optimized_required = 0;

 dc->hwss.optimize_bandwidth(dc, context);
 return 1;
}
