
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


struct TYPE_11__ {struct hubp* hubp; } ;
struct pipe_ctx {TYPE_5__ plane_res; } ;
struct hubp {TYPE_6__* funcs; } ;
struct TYPE_7__ {int recovery_enabled; } ;
struct dc {TYPE_4__* current_state; TYPE_2__* res_pool; TYPE_1__ debug; } ;
struct TYPE_12__ {scalar_t__ (* hubp_get_underflow_status ) (struct hubp*) ;int (* set_hubp_blank_en ) (struct hubp*,int) ;int (* hubp_disable_control ) (struct hubp*,int) ;} ;
struct TYPE_9__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_10__ {TYPE_3__ res_ctx; } ;
struct TYPE_8__ {unsigned int pipe_count; int hubbub; } ;


 int hubbub1_soft_reset (int ,int) ;
 scalar_t__ stub1 (struct hubp*) ;
 int stub2 (struct hubp*,int) ;
 int stub3 (struct hubp*,int) ;
 int stub4 (struct hubp*,int) ;
 int stub5 (struct hubp*,int) ;

__attribute__((used)) static bool dcn10_hw_wa_force_recovery(struct dc *dc)
{
 struct hubp *hubp ;
 unsigned int i;
 bool need_recover = 1;

 if (!dc->debug.recovery_enabled)
  return 0;

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx =
   &dc->current_state->res_ctx.pipe_ctx[i];
  if (pipe_ctx != ((void*)0)) {
   hubp = pipe_ctx->plane_res.hubp;
   if (hubp != ((void*)0) && hubp->funcs->hubp_get_underflow_status) {
    if (hubp->funcs->hubp_get_underflow_status(hubp) != 0) {

     need_recover = 1;
    }
   }
  }
 }
 if (!need_recover)
  return 0;
 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx =
   &dc->current_state->res_ctx.pipe_ctx[i];
  if (pipe_ctx != ((void*)0)) {
   hubp = pipe_ctx->plane_res.hubp;

   if (hubp != ((void*)0) && hubp->funcs->set_hubp_blank_en)
    hubp->funcs->set_hubp_blank_en(hubp, 1);
  }
 }

 hubbub1_soft_reset(dc->res_pool->hubbub, 1);

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx =
   &dc->current_state->res_ctx.pipe_ctx[i];
  if (pipe_ctx != ((void*)0)) {
   hubp = pipe_ctx->plane_res.hubp;

   if (hubp != ((void*)0) && hubp->funcs->hubp_disable_control)
    hubp->funcs->hubp_disable_control(hubp, 1);
  }
 }
 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx =
   &dc->current_state->res_ctx.pipe_ctx[i];
  if (pipe_ctx != ((void*)0)) {
   hubp = pipe_ctx->plane_res.hubp;

   if (hubp != ((void*)0) && hubp->funcs->hubp_disable_control)
    hubp->funcs->hubp_disable_control(hubp, 1);
  }
 }

 hubbub1_soft_reset(dc->res_pool->hubbub, 0);
 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx =
   &dc->current_state->res_ctx.pipe_ctx[i];
  if (pipe_ctx != ((void*)0)) {
   hubp = pipe_ctx->plane_res.hubp;

   if (hubp != ((void*)0) && hubp->funcs->set_hubp_blank_en)
    hubp->funcs->set_hubp_blank_en(hubp, 1);
  }
 }
 return 1;

}
