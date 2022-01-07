
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ gsl_group; struct hubp* hubp; struct dpp* dpp; } ;
struct pipe_ctx {int * plane_state; int * bottom_pipe; int * top_pipe; TYPE_4__ plane_res; TYPE_4__ stream_res; int * stream; } ;
struct hubp {int power_gated; TYPE_1__* funcs; } ;
struct dpp {TYPE_2__* funcs; } ;
struct TYPE_7__ {int (* plane_atomic_power_down ) (struct dc*,struct dpp*,struct hubp*) ;int (* set_flip_control_gsl ) (struct pipe_ctx*,int) ;int (* wait_for_mpcc_disconnect ) (struct dc*,int ,struct pipe_ctx*) ;} ;
struct dc {int optimized_required; TYPE_3__ hwss; int res_pool; } ;
struct TYPE_6__ {int (* dpp_dppclk_control ) (struct dpp*,int,int) ;} ;
struct TYPE_5__ {int (* hubp_clk_cntl ) (struct hubp*,int) ;} ;


 int dcn20_setup_gsl_group_as_lock (struct dc*,struct pipe_ctx*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (struct dc*,int ,struct pipe_ctx*) ;
 int stub2 (struct pipe_ctx*,int) ;
 int stub3 (struct hubp*,int) ;
 int stub4 (struct dpp*,int,int) ;
 int stub5 (struct dc*,struct dpp*,struct hubp*) ;

__attribute__((used)) static void dcn20_plane_atomic_disable(struct dc *dc, struct pipe_ctx *pipe_ctx)
{
 struct hubp *hubp = pipe_ctx->plane_res.hubp;
 struct dpp *dpp = pipe_ctx->plane_res.dpp;

 dc->hwss.wait_for_mpcc_disconnect(dc, dc->res_pool, pipe_ctx);




 if (pipe_ctx->stream_res.gsl_group != 0)
  dcn20_setup_gsl_group_as_lock(dc, pipe_ctx, 0);

 dc->hwss.set_flip_control_gsl(pipe_ctx, 0);

 hubp->funcs->hubp_clk_cntl(hubp, 0);

 dpp->funcs->dpp_dppclk_control(dpp, 0, 0);

 hubp->power_gated = 1;
 dc->optimized_required = 0;

 dc->hwss.plane_atomic_power_down(dc,
   pipe_ctx->plane_res.dpp,
   pipe_ctx->plane_res.hubp);

 pipe_ctx->stream = ((void*)0);
 memset(&pipe_ctx->stream_res, 0, sizeof(pipe_ctx->stream_res));
 memset(&pipe_ctx->plane_res, 0, sizeof(pipe_ctx->plane_res));
 pipe_ctx->top_pipe = ((void*)0);
 pipe_ctx->bottom_pipe = ((void*)0);
 pipe_ctx->plane_state = ((void*)0);
}
