
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timing_generator {TYPE_3__* funcs; } ;
struct TYPE_6__ {struct timing_generator* tg; } ;
struct TYPE_5__ {struct hubp* hubp; } ;
struct pipe_ctx {TYPE_2__ stream_res; TYPE_1__ plane_res; } ;
struct hubp {TYPE_4__* funcs; } ;
struct dc {int dummy; } ;
struct TYPE_8__ {int (* hubp_clear_underflow ) (struct hubp*) ;scalar_t__ (* hubp_get_underflow_status ) (struct hubp*) ;} ;
struct TYPE_7__ {int (* clear_optc_underflow ) (struct timing_generator*) ;scalar_t__ (* is_optc_underflow_occurred ) (struct timing_generator*) ;} ;


 scalar_t__ stub1 (struct timing_generator*) ;
 int stub2 (struct timing_generator*) ;
 scalar_t__ stub3 (struct hubp*) ;
 int stub4 (struct hubp*) ;

bool dcn10_did_underflow_occur(struct dc *dc, struct pipe_ctx *pipe_ctx)
{
 struct hubp *hubp = pipe_ctx->plane_res.hubp;
 struct timing_generator *tg = pipe_ctx->stream_res.tg;

 if (tg->funcs->is_optc_underflow_occurred(tg)) {
  tg->funcs->clear_optc_underflow(tg);
  return 1;
 }

 if (hubp->funcs->hubp_get_underflow_status(hubp)) {
  hubp->funcs->hubp_clear_underflow(hubp);
  return 1;
 }
 return 0;
}
