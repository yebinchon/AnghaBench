
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_15__ {int vupdate_width; int vupdate_offset; int vstartup_start; int vready_offset; } ;
struct TYPE_25__ {TYPE_10__* hubp; } ;
struct TYPE_21__ {TYPE_12__* tg; } ;
struct pipe_ctx {TYPE_11__ pipe_dlg_param; int rq_regs; int ttu_regs; int dlg_regs; TYPE_9__ plane_res; int * prev_odm_pipe; TYPE_6__* stream; TYPE_5__ stream_res; int * top_pipe; int * plane_state; } ;
struct TYPE_19__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_3__ res_ctx; } ;
struct TYPE_23__ {int (* blank_pixel_data ) (struct dc*,struct pipe_ctx*,int) ;int (* prepare_bandwidth ) (struct dc*,struct dc_state*) ;} ;
struct dc {TYPE_7__ hwss; TYPE_2__* res_pool; } ;
struct TYPE_24__ {int (* hubp_setup ) (TYPE_10__*,int *,int *,int *,TYPE_11__*) ;} ;
struct TYPE_22__ {int timing; } ;
struct TYPE_20__ {int (* set_vtg_params ) (TYPE_12__*,int *) ;int (* program_global_sync ) (TYPE_12__*,int ,int ,int ,int ) ;} ;
struct TYPE_18__ {int pipe_count; TYPE_1__* funcs; } ;
struct TYPE_17__ {int (* validate_bandwidth ) (struct dc*,struct dc_state*,int) ;} ;
struct TYPE_16__ {TYPE_4__* funcs; } ;
struct TYPE_14__ {TYPE_8__* funcs; } ;


 int is_pipe_tree_visible (struct pipe_ctx*) ;
 int stub1 (struct dc*,struct dc_state*,int) ;
 int stub2 (struct dc*,struct dc_state*) ;
 int stub3 (TYPE_12__*,int ,int ,int ,int ) ;
 int stub4 (TYPE_12__*,int *) ;
 int stub5 (struct dc*,struct pipe_ctx*,int) ;
 int stub6 (TYPE_10__*,int *,int *,int *,TYPE_11__*) ;

bool dcn20_update_bandwidth(
  struct dc *dc,
  struct dc_state *context)
{
 int i;


 if (!dc->res_pool->funcs->validate_bandwidth(dc, context, 0))
  return 0;


 dc->hwss.prepare_bandwidth(dc, context);


 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];

  if (pipe_ctx->plane_state == ((void*)0))
   continue;

  if (pipe_ctx->top_pipe == ((void*)0)) {
   bool blank = !is_pipe_tree_visible(pipe_ctx);

   pipe_ctx->stream_res.tg->funcs->program_global_sync(
     pipe_ctx->stream_res.tg,
     pipe_ctx->pipe_dlg_param.vready_offset,
     pipe_ctx->pipe_dlg_param.vstartup_start,
     pipe_ctx->pipe_dlg_param.vupdate_offset,
     pipe_ctx->pipe_dlg_param.vupdate_width);

   pipe_ctx->stream_res.tg->funcs->set_vtg_params(
     pipe_ctx->stream_res.tg, &pipe_ctx->stream->timing);
   if (pipe_ctx->prev_odm_pipe == ((void*)0))
    dc->hwss.blank_pixel_data(dc, pipe_ctx, blank);
  }

  pipe_ctx->plane_res.hubp->funcs->hubp_setup(
    pipe_ctx->plane_res.hubp,
     &pipe_ctx->dlg_regs,
     &pipe_ctx->ttu_regs,
     &pipe_ctx->rq_regs,
     &pipe_ctx->pipe_dlg_param);
 }

 return 1;
}
