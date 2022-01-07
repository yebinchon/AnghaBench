
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* tg; TYPE_7__* opp; } ;
struct pipe_ctx {TYPE_4__ stream_res; struct dc_stream_state* stream; } ;
struct TYPE_14__ {scalar_t__ timing_3d_format; } ;
struct dc_stream_state {TYPE_6__ timing; } ;
struct dc {TYPE_1__* ctx; } ;
struct crtc_stereo_flags {int PROGRAM_STEREO; int member_0; } ;
struct TYPE_15__ {TYPE_2__* funcs; } ;
struct TYPE_13__ {TYPE_3__* funcs; } ;
struct TYPE_11__ {int (* program_stereo ) (TYPE_5__*,TYPE_6__*,struct crtc_stereo_flags*) ;} ;
struct TYPE_10__ {int (* opp_program_stereo ) (TYPE_7__*,int,TYPE_6__*) ;} ;
struct TYPE_9__ {int gpio_service; } ;


 scalar_t__ TIMING_3D_FORMAT_SIDEBAND_FA ;
 int dc_set_generic_gpio_for_stereo (int,int ) ;
 int dcn10_config_stereo_parameters (struct dc_stream_state*,struct crtc_stereo_flags*) ;
 int stub1 (TYPE_7__*,int,TYPE_6__*) ;
 int stub2 (TYPE_5__*,TYPE_6__*,struct crtc_stereo_flags*) ;

__attribute__((used)) static void dcn10_setup_stereo(struct pipe_ctx *pipe_ctx, struct dc *dc)
{
 struct crtc_stereo_flags flags = { 0 };
 struct dc_stream_state *stream = pipe_ctx->stream;

 dcn10_config_stereo_parameters(stream, &flags);

 if (stream->timing.timing_3d_format == TIMING_3D_FORMAT_SIDEBAND_FA) {
  if (!dc_set_generic_gpio_for_stereo(1, dc->ctx->gpio_service))
   dc_set_generic_gpio_for_stereo(0, dc->ctx->gpio_service);
 } else {
  dc_set_generic_gpio_for_stereo(0, dc->ctx->gpio_service);
 }

 pipe_ctx->stream_res.opp->funcs->opp_program_stereo(
  pipe_ctx->stream_res.opp,
  flags.PROGRAM_STEREO == 1 ? 1:0,
  &stream->timing);

 pipe_ctx->stream_res.tg->funcs->program_stereo(
  pipe_ctx->stream_res.tg,
  &stream->timing,
  &flags);

 return;
}
