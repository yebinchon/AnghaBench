
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct tg_color {int member_0; } ;
struct TYPE_24__ {TYPE_6__* tg; TYPE_10__* opp; int pix_clk_params; } ;
struct TYPE_21__ {int vupdate_width; int vupdate_offset; int vstartup_start; int vready_offset; } ;
struct pipe_ctx {TYPE_5__ stream_res; struct dc_stream_state* stream; TYPE_2__ pipe_dlg_param; int pll_settings; TYPE_12__* clock_source; int * top_pipe; } ;
struct dc_stream_state {int output_color_space; int clamping; int bit_depth_params; int signal; int timing; } ;
struct dc_state {int dummy; } ;
struct dc {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_25__ {size_t inst; TYPE_4__* funcs; } ;
struct TYPE_23__ {int (* enable_crtc ) (TYPE_6__*) ;int (* set_blank ) (TYPE_6__*,int) ;int (* is_blanked ) (TYPE_6__*) ;int (* set_blank_color ) (TYPE_6__*,struct tg_color*) ;int (* program_timing ) (TYPE_6__*,int *,int ,int ,int ,int ,int ,int) ;int (* enable_optc_clock ) (TYPE_6__*,int) ;} ;
struct TYPE_22__ {int (* opp_program_fmt ) (TYPE_10__*,int *,int *) ;} ;
struct TYPE_20__ {int (* program_pix_clk ) (TYPE_12__*,int *,int *) ;} ;
struct TYPE_19__ {int fmt; } ;
struct TYPE_18__ {TYPE_1__* funcs; } ;
struct TYPE_17__ {TYPE_3__* funcs; } ;


 int BREAK_TO_DEBUGGER () ;
 int DC_ERROR_UNEXPECTED ;
 int DC_OK ;
 int color_space_to_black_color (struct dc*,int,struct tg_color*) ;
 int false_optc_underflow_wa (struct dc*,struct dc_stream_state*,TYPE_6__*) ;
 int hwss_wait_for_blank_complete (TYPE_6__*) ;
 int inst_offset ;
 TYPE_14__* reg_offsets ;
 int stub1 (TYPE_6__*,int) ;
 int stub2 (TYPE_12__*,int *,int *) ;
 int stub3 (TYPE_6__*,int *,int ,int ,int ,int ,int ,int) ;
 int stub4 (TYPE_10__*,int *,int *) ;
 int stub5 (TYPE_6__*,struct tg_color*) ;
 int stub6 (TYPE_6__*) ;
 int stub7 (TYPE_6__*,int) ;
 int stub8 (TYPE_6__*) ;

__attribute__((used)) static enum dc_status dcn10_enable_stream_timing(
  struct pipe_ctx *pipe_ctx,
  struct dc_state *context,
  struct dc *dc)
{
 struct dc_stream_state *stream = pipe_ctx->stream;
 enum dc_color_space color_space;
 struct tg_color black_color = {0};





 if (pipe_ctx->top_pipe != ((void*)0))
  return DC_OK;






 pipe_ctx->stream_res.tg->funcs->enable_optc_clock(pipe_ctx->stream_res.tg, 1);

 if (0 == pipe_ctx->clock_source->funcs->program_pix_clk(
   pipe_ctx->clock_source,
   &pipe_ctx->stream_res.pix_clk_params,
   &pipe_ctx->pll_settings)) {
  BREAK_TO_DEBUGGER();
  return DC_ERROR_UNEXPECTED;
 }

 pipe_ctx->stream_res.tg->funcs->program_timing(
   pipe_ctx->stream_res.tg,
   &stream->timing,
   pipe_ctx->pipe_dlg_param.vready_offset,
   pipe_ctx->pipe_dlg_param.vstartup_start,
   pipe_ctx->pipe_dlg_param.vupdate_offset,
   pipe_ctx->pipe_dlg_param.vupdate_width,
   pipe_ctx->stream->signal,
   1);
 color_space = stream->output_color_space;
 color_space_to_black_color(dc, color_space, &black_color);

 if (pipe_ctx->stream_res.tg->funcs->set_blank_color)
  pipe_ctx->stream_res.tg->funcs->set_blank_color(
    pipe_ctx->stream_res.tg,
    &black_color);

 if (pipe_ctx->stream_res.tg->funcs->is_blanked &&
   !pipe_ctx->stream_res.tg->funcs->is_blanked(pipe_ctx->stream_res.tg)) {
  pipe_ctx->stream_res.tg->funcs->set_blank(pipe_ctx->stream_res.tg, 1);
  hwss_wait_for_blank_complete(pipe_ctx->stream_res.tg);
  false_optc_underflow_wa(dc, pipe_ctx->stream, pipe_ctx->stream_res.tg);
 }


 if (0 == pipe_ctx->stream_res.tg->funcs->enable_crtc(pipe_ctx->stream_res.tg)) {
  BREAK_TO_DEBUGGER();
  return DC_ERROR_UNEXPECTED;
 }
 return DC_OK;
}
