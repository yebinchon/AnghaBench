
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_6__* tg; } ;
struct TYPE_8__ {int vupdate_width; int vupdate_offset; int vstartup_start; int vready_offset; } ;
struct pipe_ctx {struct pipe_ctx* bottom_pipe; int * plane_state; TYPE_4__* stream; TYPE_3__ stream_res; TYPE_1__ pipe_dlg_param; int * top_pipe; } ;
struct dc_state {int dummy; } ;
struct TYPE_12__ {int (* blank_pixel_data ) (struct dc*,struct pipe_ctx*,int) ;} ;
struct dc {TYPE_5__ hwss; } ;
struct TYPE_13__ {TYPE_2__* funcs; } ;
struct TYPE_11__ {int timing; } ;
struct TYPE_9__ {int (* set_vtg_params ) (TYPE_6__*,int *) ;int (* program_global_sync ) (TYPE_6__*,int ,int ,int ,int ) ;} ;


 int dcn10_program_pipe (struct dc*,struct pipe_ctx*,struct dc_state*) ;
 int is_pipe_tree_visible (struct pipe_ctx*) ;
 int stub1 (TYPE_6__*,int ,int ,int ,int ) ;
 int stub2 (TYPE_6__*,int *) ;
 int stub3 (struct dc*,struct pipe_ctx*,int) ;

__attribute__((used)) static void program_all_pipe_in_tree(
  struct dc *dc,
  struct pipe_ctx *pipe_ctx,
  struct dc_state *context)
{
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

  dc->hwss.blank_pixel_data(dc, pipe_ctx, blank);

 }

 if (pipe_ctx->plane_state != ((void*)0))
  dcn10_program_pipe(dc, pipe_ctx, context);

 if (pipe_ctx->bottom_pipe != ((void*)0) && pipe_ctx->bottom_pipe != pipe_ctx)
  program_all_pipe_in_tree(dc, pipe_ctx->bottom_pipe, context);
}
