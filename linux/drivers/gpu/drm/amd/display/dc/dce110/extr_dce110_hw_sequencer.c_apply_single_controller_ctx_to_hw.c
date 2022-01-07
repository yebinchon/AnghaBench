
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_19__ ;
typedef struct TYPE_28__ TYPE_16__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_30__ {int alpha_en; } ;
struct TYPE_31__ {TYPE_1__ lb_params; } ;
struct TYPE_32__ {TYPE_2__ scl_data; } ;
struct TYPE_25__ {TYPE_19__* opp; TYPE_14__* tg; TYPE_13__* stream_enc; TYPE_16__* audio; } ;
struct pipe_ctx {scalar_t__ bottom_pipe; struct dc_stream_state* stream; TYPE_3__ plane_res; struct pipe_ctx* next_odm_pipe; TYPE_12__ stream_res; } ;
struct drr_params {scalar_t__ vertical_total_min; scalar_t__ vertical_total_max; int member_0; } ;
struct TYPE_23__ {int display_color_depth; } ;
struct TYPE_36__ {scalar_t__ v_total_min; scalar_t__ v_total_max; } ;
struct dc_stream_state {TYPE_4__* link; int dpms_off; int clamping; int bit_depth_params; int signal; TYPE_10__ timing; TYPE_7__ adjust; int apply_seamless_boot_optimization; int audio_info; } ;
struct dc_state {int dummy; } ;
struct TYPE_35__ {int (* setup_vupdate_interrupt ) (struct pipe_ctx*) ;int (* enable_stream_timing ) (struct pipe_ctx*,struct dc_state*,struct dc*) ;int (* disable_stream_gating ) (struct dc*,struct pipe_ctx*) ;} ;
struct dc {TYPE_6__ hwss; } ;
struct audio_output {int crtc_info; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_38__ {int (* dig_connect_to_otg ) (TYPE_13__*,int ) ;int (* hdmi_audio_setup ) (TYPE_13__*,int ,int *,int *) ;int (* dp_audio_setup ) (TYPE_13__*,int ,int *) ;} ;
struct TYPE_37__ {int (* set_static_screen_control ) (TYPE_14__*,unsigned int) ;int (* set_drr ) (TYPE_14__*,struct drr_params*) ;} ;
struct TYPE_34__ {int (* az_configure ) (TYPE_16__*,int ,int *,int *) ;} ;
struct TYPE_33__ {int psr_enabled; } ;
struct TYPE_29__ {TYPE_11__* funcs; } ;
struct TYPE_28__ {TYPE_5__* funcs; int inst; } ;
struct TYPE_27__ {int inst; TYPE_8__* funcs; } ;
struct TYPE_26__ {TYPE_9__* funcs; } ;
struct TYPE_24__ {int (* opp_program_fmt ) (TYPE_19__*,int *,int *) ;int (* opp_set_dyn_expansion ) (TYPE_19__*,int ,int ,int ) ;} ;


 int COLOR_SPACE_YCBCR601 ;
 int DC_OK ;
 int build_audio_output (struct dc_state*,struct pipe_ctx*,struct audio_output*) ;
 int core_link_enable_stream (struct dc_state*,struct pipe_ctx*) ;
 scalar_t__ dc_is_dp_signal (int ) ;
 int dc_is_virtual_signal (int ) ;
 int stub1 (struct dc*,struct pipe_ctx*) ;
 int stub10 (TYPE_19__*,int ,int ,int ) ;
 int stub11 (TYPE_19__*,int *,int *) ;
 int stub12 (TYPE_19__*,int ,int ,int ) ;
 int stub13 (TYPE_19__*,int *,int *) ;
 int stub2 (TYPE_13__*,int ,int *) ;
 int stub3 (TYPE_13__*,int ,int *,int *) ;
 int stub4 (TYPE_16__*,int ,int *,int *) ;
 int stub5 (struct pipe_ctx*,struct dc_state*,struct dc*) ;
 int stub6 (struct pipe_ctx*) ;
 int stub7 (TYPE_14__*,struct drr_params*) ;
 int stub8 (TYPE_14__*,unsigned int) ;
 int stub9 (TYPE_13__*,int ) ;

__attribute__((used)) static enum dc_status apply_single_controller_ctx_to_hw(
  struct pipe_ctx *pipe_ctx,
  struct dc_state *context,
  struct dc *dc)
{
 struct dc_stream_state *stream = pipe_ctx->stream;
 struct drr_params params = {0};
 unsigned int event_triggers = 0;




 if (dc->hwss.disable_stream_gating) {
  dc->hwss.disable_stream_gating(dc, pipe_ctx);
 }

 if (pipe_ctx->stream_res.audio != ((void*)0)) {
  struct audio_output audio_output;

  build_audio_output(context, pipe_ctx, &audio_output);

  if (dc_is_dp_signal(pipe_ctx->stream->signal))
   pipe_ctx->stream_res.stream_enc->funcs->dp_audio_setup(
     pipe_ctx->stream_res.stream_enc,
     pipe_ctx->stream_res.audio->inst,
     &pipe_ctx->stream->audio_info);
  else
   pipe_ctx->stream_res.stream_enc->funcs->hdmi_audio_setup(
     pipe_ctx->stream_res.stream_enc,
     pipe_ctx->stream_res.audio->inst,
     &pipe_ctx->stream->audio_info,
     &audio_output.crtc_info);

  pipe_ctx->stream_res.audio->funcs->az_configure(
    pipe_ctx->stream_res.audio,
    pipe_ctx->stream->signal,
    &audio_output.crtc_info,
    &pipe_ctx->stream->audio_info);
 }



 if (!pipe_ctx->stream->apply_seamless_boot_optimization)
  dc->hwss.enable_stream_timing(pipe_ctx, context, dc);

 if (dc->hwss.setup_vupdate_interrupt)
  dc->hwss.setup_vupdate_interrupt(pipe_ctx);

 params.vertical_total_min = stream->adjust.v_total_min;
 params.vertical_total_max = stream->adjust.v_total_max;
 if (pipe_ctx->stream_res.tg->funcs->set_drr)
  pipe_ctx->stream_res.tg->funcs->set_drr(
   pipe_ctx->stream_res.tg, &params);


 if (stream->adjust.v_total_min != 0 && stream->adjust.v_total_max != 0)
  event_triggers = 0x80;
 if (pipe_ctx->stream_res.tg->funcs->set_static_screen_control)
  pipe_ctx->stream_res.tg->funcs->set_static_screen_control(
    pipe_ctx->stream_res.tg, event_triggers);

 if (!dc_is_virtual_signal(pipe_ctx->stream->signal))
  pipe_ctx->stream_res.stream_enc->funcs->dig_connect_to_otg(
   pipe_ctx->stream_res.stream_enc,
   pipe_ctx->stream_res.tg->inst);

 pipe_ctx->stream_res.opp->funcs->opp_set_dyn_expansion(
   pipe_ctx->stream_res.opp,
   COLOR_SPACE_YCBCR601,
   stream->timing.display_color_depth,
   stream->signal);

 pipe_ctx->stream_res.opp->funcs->opp_program_fmt(
  pipe_ctx->stream_res.opp,
  &stream->bit_depth_params,
  &stream->clamping);
 if (!stream->dpms_off)
  core_link_enable_stream(context, pipe_ctx);

 pipe_ctx->plane_res.scl_data.lb_params.alpha_en = pipe_ctx->bottom_pipe != 0;

 pipe_ctx->stream->link->psr_enabled = 0;

 return DC_OK;
}
