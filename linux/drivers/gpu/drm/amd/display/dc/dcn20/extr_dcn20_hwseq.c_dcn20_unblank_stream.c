
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {TYPE_8__* stream_enc; } ;
struct pipe_ctx {TYPE_4__ stream_res; struct dc_stream_state* stream; struct pipe_ctx* next_odm_pipe; } ;
struct TYPE_11__ {int pix_clk_100hz; } ;
struct TYPE_13__ {int link_rate; } ;
struct TYPE_12__ {int member_0; } ;
struct encoder_unblank_param {int opp_cnt; TYPE_10__ timing; TYPE_2__ link_settings; TYPE_1__ member_0; } ;
struct dc_stream_state {TYPE_10__ timing; int signal; struct dc_link* link; } ;
struct dc_link_settings {int link_rate; } ;
struct dc_link {TYPE_7__* dc; TYPE_5__* local_sink; } ;
struct TYPE_19__ {TYPE_3__* funcs; } ;
struct TYPE_17__ {int (* edp_backlight_control ) (struct dc_link*,int) ;} ;
struct TYPE_18__ {TYPE_6__ hwss; } ;
struct TYPE_16__ {scalar_t__ sink_signal; } ;
struct TYPE_14__ {int (* dp_unblank ) (TYPE_8__*,struct encoder_unblank_param*) ;int (* dp_set_odm_combine ) (TYPE_8__*,int) ;} ;


 scalar_t__ SIGNAL_TYPE_EDP ;
 scalar_t__ dc_is_dp_signal (int ) ;
 scalar_t__ optc1_is_two_pixels_per_containter (TYPE_10__*) ;
 int stub1 (TYPE_8__*,int) ;
 int stub2 (TYPE_8__*,struct encoder_unblank_param*) ;
 int stub3 (struct dc_link*,int) ;

void dcn20_unblank_stream(struct pipe_ctx *pipe_ctx,
  struct dc_link_settings *link_settings)
{
 struct encoder_unblank_param params = { { 0 } };
 struct dc_stream_state *stream = pipe_ctx->stream;
 struct dc_link *link = stream->link;
 struct pipe_ctx *odm_pipe;

 params.opp_cnt = 1;
 for (odm_pipe = pipe_ctx->next_odm_pipe; odm_pipe; odm_pipe = odm_pipe->next_odm_pipe) {
  params.opp_cnt++;
 }

 params.timing = pipe_ctx->stream->timing;

 params.link_settings.link_rate = link_settings->link_rate;

 if (dc_is_dp_signal(pipe_ctx->stream->signal)) {
  if (optc1_is_two_pixels_per_containter(&stream->timing) || params.opp_cnt > 1)
   params.timing.pix_clk_100hz /= 2;
  pipe_ctx->stream_res.stream_enc->funcs->dp_set_odm_combine(
    pipe_ctx->stream_res.stream_enc, params.opp_cnt > 1);
  pipe_ctx->stream_res.stream_enc->funcs->dp_unblank(pipe_ctx->stream_res.stream_enc, &params);
 }

 if (link->local_sink && link->local_sink->sink_signal == SIGNAL_TYPE_EDP) {
  link->dc->hwss.edp_backlight_control(link, 1);
 }
}
