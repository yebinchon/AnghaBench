
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


struct TYPE_11__ {TYPE_6__* audio; } ;
struct pipe_ctx {TYPE_5__* stream; TYPE_4__ stream_res; scalar_t__ top_pipe; } ;
struct TYPE_9__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_2__ res_ctx; } ;
struct dc {TYPE_1__* res_pool; } ;
struct audio_output {int pll_info; int crtc_info; } ;
struct TYPE_13__ {TYPE_3__* funcs; } ;
struct TYPE_12__ {scalar_t__ signal; } ;
struct TYPE_10__ {int (* wall_dto_setup ) (TYPE_6__*,scalar_t__,int *,int *) ;} ;
struct TYPE_8__ {int pipe_count; } ;


 scalar_t__ SIGNAL_TYPE_HDMI_TYPE_A ;
 int build_audio_output (struct dc_state*,struct pipe_ctx*,struct audio_output*) ;
 int dc_is_dp_signal (scalar_t__) ;
 int stub1 (TYPE_6__*,scalar_t__,int *,int *) ;
 int stub2 (TYPE_6__*,scalar_t__,int *,int *) ;

__attribute__((used)) static void dce110_setup_audio_dto(
  struct dc *dc,
  struct dc_state *context)
{
 int i;
 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];

  if (pipe_ctx->stream == ((void*)0))
   continue;

  if (pipe_ctx->top_pipe)
   continue;

  if (pipe_ctx->stream->signal != SIGNAL_TYPE_HDMI_TYPE_A)
   continue;

  if (pipe_ctx->stream_res.audio != ((void*)0)) {
   struct audio_output audio_output;

   build_audio_output(context, pipe_ctx, &audio_output);

   pipe_ctx->stream_res.audio->funcs->wall_dto_setup(
    pipe_ctx->stream_res.audio,
    pipe_ctx->stream->signal,
    &audio_output.crtc_info,
    &audio_output.pll_info);
   break;
  }
 }


 if (i == dc->res_pool->pipe_count) {
  for (i = 0; i < dc->res_pool->pipe_count; i++) {
   struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];

   if (pipe_ctx->stream == ((void*)0))
    continue;

   if (pipe_ctx->top_pipe)
    continue;

   if (!dc_is_dp_signal(pipe_ctx->stream->signal))
    continue;

   if (pipe_ctx->stream_res.audio != ((void*)0)) {
    struct audio_output audio_output;

    build_audio_output(context, pipe_ctx, &audio_output);

    pipe_ctx->stream_res.audio->funcs->wall_dto_setup(
     pipe_ctx->stream_res.audio,
     pipe_ctx->stream->signal,
     &audio_output.crtc_info,
     &audio_output.pll_info);
    break;
   }
  }
 }
}
