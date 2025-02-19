
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


struct resource_pool {TYPE_6__* mpc; } ;
struct TYPE_9__ {TYPE_2__* opp; } ;
struct pipe_ctx {TYPE_3__ stream_res; } ;
struct hubp {TYPE_4__* funcs; } ;
struct TYPE_11__ {scalar_t__ sanity_checks; } ;
struct dc {TYPE_5__ debug; } ;
struct TYPE_12__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int (* set_blank ) (struct hubp*,int) ;} ;
struct TYPE_8__ {int* mpcc_disconnect_pending; } ;
struct TYPE_7__ {int (* wait_for_idle ) (TYPE_6__*,int) ;} ;


 int MAX_PIPES ;
 int dcn10_verify_allow_pstate_change_high (struct dc*) ;
 struct hubp* get_hubp_by_inst (struct resource_pool*,int) ;
 int stub1 (TYPE_6__*,int) ;
 int stub2 (struct hubp*,int) ;

__attribute__((used)) static void dcn10_wait_for_mpcc_disconnect(
  struct dc *dc,
  struct resource_pool *res_pool,
  struct pipe_ctx *pipe_ctx)
{
 int mpcc_inst;

 if (dc->debug.sanity_checks) {
  dcn10_verify_allow_pstate_change_high(dc);
 }

 if (!pipe_ctx->stream_res.opp)
  return;

 for (mpcc_inst = 0; mpcc_inst < MAX_PIPES; mpcc_inst++) {
  if (pipe_ctx->stream_res.opp->mpcc_disconnect_pending[mpcc_inst]) {
   struct hubp *hubp = get_hubp_by_inst(res_pool, mpcc_inst);

   res_pool->mpc->funcs->wait_for_idle(res_pool->mpc, mpcc_inst);
   pipe_ctx->stream_res.opp->mpcc_disconnect_pending[mpcc_inst] = 0;
   hubp->funcs->set_blank(hubp, 1);
  }
 }

 if (dc->debug.sanity_checks) {
  dcn10_verify_allow_pstate_change_high(dc);
 }

}
