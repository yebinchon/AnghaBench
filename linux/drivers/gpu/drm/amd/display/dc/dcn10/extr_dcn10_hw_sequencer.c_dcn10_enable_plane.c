
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_8__* hubp; } ;
struct TYPE_12__ {TYPE_7__* opp; } ;
struct pipe_ctx {TYPE_5__ plane_res; TYPE_3__ stream_res; } ;
struct dce_hwseq {int dummy; } ;
struct dc_state {int dummy; } ;
struct TYPE_15__ {scalar_t__ sanity_checks; } ;
struct TYPE_13__ {scalar_t__ gpu_vm_support; } ;
struct dc {TYPE_6__ debug; TYPE_4__ config; struct dce_hwseq* hwseq; } ;
struct TYPE_17__ {TYPE_1__* funcs; int inst; } ;
struct TYPE_16__ {TYPE_2__* funcs; } ;
struct TYPE_11__ {int (* opp_pipe_clock_control ) (TYPE_7__*,int) ;} ;
struct TYPE_10__ {int (* hubp_clk_cntl ) (TYPE_8__*,int) ;} ;


 int dcn10_program_pte_vm (struct dce_hwseq*,TYPE_8__*) ;
 int dcn10_verify_allow_pstate_change_high (struct dc*) ;
 int power_on_plane (struct dce_hwseq*,int ) ;
 int stub1 (TYPE_8__*,int) ;
 int stub2 (TYPE_7__*,int) ;
 int undo_DEGVIDCN10_253_wa (struct dc*) ;

__attribute__((used)) static void dcn10_enable_plane(
 struct dc *dc,
 struct pipe_ctx *pipe_ctx,
 struct dc_state *context)
{
 struct dce_hwseq *hws = dc->hwseq;

 if (dc->debug.sanity_checks) {
  dcn10_verify_allow_pstate_change_high(dc);
 }

 undo_DEGVIDCN10_253_wa(dc);

 power_on_plane(dc->hwseq,
  pipe_ctx->plane_res.hubp->inst);


 pipe_ctx->plane_res.hubp->funcs->hubp_clk_cntl(pipe_ctx->plane_res.hubp, 1);


 pipe_ctx->stream_res.opp->funcs->opp_pipe_clock_control(
   pipe_ctx->stream_res.opp,
   1);
 if (dc->config.gpu_vm_support)
  dcn10_program_pte_vm(hws, pipe_ctx->plane_res.hubp);

 if (dc->debug.sanity_checks) {
  dcn10_verify_allow_pstate_change_high(dc);
 }
}
