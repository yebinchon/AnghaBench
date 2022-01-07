
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int alpha_en; int depth; } ;
struct TYPE_12__ {TYPE_3__ lb_params; } ;
struct TYPE_10__ {TYPE_6__ scl_data; TYPE_5__* dpp; } ;
struct pipe_ctx {TYPE_4__ plane_res; scalar_t__ bottom_pipe; TYPE_2__* plane_state; } ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_8__ {int per_pixel_alpha; } ;
struct TYPE_7__ {int (* dpp_set_scaler ) (TYPE_5__*,TYPE_6__*) ;} ;


 int LB_PIXEL_DEPTH_30BPP ;
 int stub1 (TYPE_5__*,TYPE_6__*) ;

__attribute__((used)) static void update_scaler(struct pipe_ctx *pipe_ctx)
{
 bool per_pixel_alpha =
   pipe_ctx->plane_state->per_pixel_alpha && pipe_ctx->bottom_pipe;

 pipe_ctx->plane_res.scl_data.lb_params.alpha_en = per_pixel_alpha;
 pipe_ctx->plane_res.scl_data.lb_params.depth = LB_PIXEL_DEPTH_30BPP;

 pipe_ctx->plane_res.dpp->funcs->dpp_set_scaler(
   pipe_ctx->plane_res.dpp, &pipe_ctx->plane_res.scl_data);
}
