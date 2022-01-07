
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_26__ {TYPE_12__* tg; TYPE_11__* audio; int * stream_enc; } ;
struct pipe_ctx {TYPE_8__ stream_res; int pipe_idx; TYPE_7__* stream; int * top_pipe; } ;
struct dc_state {int dummy; } ;
struct TYPE_22__ {int dynamic_audio; } ;
struct TYPE_20__ {int (* disable_audio_stream ) (struct pipe_ctx*) ;} ;
struct dc {TYPE_10__* res_pool; TYPE_6__* current_state; TYPE_4__ caps; TYPE_2__ hwss; TYPE_1__* ctx; } ;
struct TYPE_27__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_25__ {int dpms_off; } ;
struct TYPE_24__ {TYPE_9__ res_ctx; } ;
struct TYPE_23__ {int (* set_drr ) (TYPE_12__*,int *) ;int (* enable_optc_clock ) (TYPE_12__*,int) ;int (* disable_crtc ) (TYPE_12__*) ;} ;
struct TYPE_21__ {int (* az_disable ) (TYPE_11__*) ;} ;
struct TYPE_19__ {int dce_environment; int logger; } ;
struct TYPE_18__ {int inst; TYPE_5__* funcs; } ;
struct TYPE_17__ {TYPE_3__* funcs; } ;
struct TYPE_16__ {int pipe_count; } ;


 int DC_LOGGER_INIT (int ) ;
 int DC_LOG_DEBUG (char*,int ,int ) ;
 int IS_FPGA_MAXIMUS_DC (int ) ;
 int core_link_disable_stream (struct pipe_ctx*) ;
 int stub1 (struct pipe_ctx*) ;
 int stub2 (TYPE_11__*) ;
 int stub3 (TYPE_12__*) ;
 int stub4 (TYPE_12__*,int) ;
 int stub5 (TYPE_12__*,int *) ;
 int update_audio_usage (TYPE_9__*,TYPE_10__*,TYPE_11__*,int) ;

__attribute__((used)) static void dcn10_reset_back_end_for_pipe(
  struct dc *dc,
  struct pipe_ctx *pipe_ctx,
  struct dc_state *context)
{
 int i;
 DC_LOGGER_INIT(dc->ctx->logger);
 if (pipe_ctx->stream_res.stream_enc == ((void*)0)) {
  pipe_ctx->stream = ((void*)0);
  return;
 }

 if (!IS_FPGA_MAXIMUS_DC(dc->ctx->dce_environment)) {

  if (!pipe_ctx->stream->dpms_off)
   core_link_disable_stream(pipe_ctx);
  else if (pipe_ctx->stream_res.audio)
   dc->hwss.disable_audio_stream(pipe_ctx);

  if (pipe_ctx->stream_res.audio) {

   pipe_ctx->stream_res.audio->funcs->az_disable(pipe_ctx->stream_res.audio);


   if (dc->caps.dynamic_audio == 1) {


    update_audio_usage(&dc->current_state->res_ctx, dc->res_pool,
      pipe_ctx->stream_res.audio, 0);
    pipe_ctx->stream_res.audio = ((void*)0);
   }
  }
 }





 if (pipe_ctx->top_pipe == ((void*)0)) {
  pipe_ctx->stream_res.tg->funcs->disable_crtc(pipe_ctx->stream_res.tg);

  pipe_ctx->stream_res.tg->funcs->enable_optc_clock(pipe_ctx->stream_res.tg, 0);
  if (pipe_ctx->stream_res.tg->funcs->set_drr)
   pipe_ctx->stream_res.tg->funcs->set_drr(
     pipe_ctx->stream_res.tg, ((void*)0));
 }

 for (i = 0; i < dc->res_pool->pipe_count; i++)
  if (&dc->current_state->res_ctx.pipe_ctx[i] == pipe_ctx)
   break;

 if (i == dc->res_pool->pipe_count)
  return;

 pipe_ctx->stream = ((void*)0);
 DC_LOG_DEBUG("Reset back end for pipe %d, tg:%d\n",
     pipe_ctx->pipe_idx, pipe_ctx->stream_res.tg->inst);
}
