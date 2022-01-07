
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {struct hubp* hubp; struct dpp* dpp; TYPE_6__* opp; } ;
struct pipe_ctx {int * plane_state; int * bottom_pipe; int * top_pipe; TYPE_7__ plane_res; TYPE_7__ stream_res; int * stream; } ;
struct hubp {int opp_id; int power_gated; TYPE_1__* funcs; } ;
struct dpp {TYPE_2__* funcs; } ;
struct TYPE_12__ {int (* plane_atomic_power_down ) (struct dc*,struct dpp*,struct hubp*) ;int (* wait_for_mpcc_disconnect ) (struct dc*,int ,struct pipe_ctx*) ;} ;
struct dc {int optimized_required; TYPE_5__ hwss; int res_pool; } ;
struct TYPE_10__ {int * opp_list; } ;
struct TYPE_13__ {TYPE_4__* funcs; TYPE_3__ mpc_tree_params; } ;
struct TYPE_11__ {int (* opp_pipe_clock_control ) (TYPE_6__*,int) ;} ;
struct TYPE_9__ {int (* dpp_dppclk_control ) (struct dpp*,int,int) ;} ;
struct TYPE_8__ {int (* hubp_clk_cntl ) (struct hubp*,int) ;} ;


 int memset (TYPE_7__*,int ,int) ;
 int stub1 (struct dc*,int ,struct pipe_ctx*) ;
 int stub2 (struct hubp*,int) ;
 int stub3 (struct dpp*,int,int) ;
 int stub4 (TYPE_6__*,int) ;
 int stub5 (struct dc*,struct dpp*,struct hubp*) ;

__attribute__((used)) static void dcn10_plane_atomic_disable(struct dc *dc, struct pipe_ctx *pipe_ctx)
{
 struct hubp *hubp = pipe_ctx->plane_res.hubp;
 struct dpp *dpp = pipe_ctx->plane_res.dpp;
 int opp_id = hubp->opp_id;

 dc->hwss.wait_for_mpcc_disconnect(dc, dc->res_pool, pipe_ctx);

 hubp->funcs->hubp_clk_cntl(hubp, 0);

 dpp->funcs->dpp_dppclk_control(dpp, 0, 0);

 if (opp_id != 0xf && pipe_ctx->stream_res.opp->mpc_tree_params.opp_list == ((void*)0))
  pipe_ctx->stream_res.opp->funcs->opp_pipe_clock_control(
    pipe_ctx->stream_res.opp,
    0);

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
