
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_8__* stream_enc; } ;
struct pipe_ctx {TYPE_4__ stream_res; struct dc_stream_state* stream; } ;
struct TYPE_10__ {int link_rate; } ;
struct TYPE_9__ {int member_0; } ;
struct encoder_unblank_param {TYPE_2__ link_settings; int timing; TYPE_1__ member_0; } ;
struct dc_stream_state {int signal; int timing; struct dc_link* link; } ;
struct dc_link_settings {int link_rate; } ;
struct dc_link {TYPE_7__* dc; TYPE_5__* local_sink; } ;
struct TYPE_16__ {TYPE_3__* funcs; } ;
struct TYPE_14__ {int (* edp_backlight_control ) (struct dc_link*,int) ;} ;
struct TYPE_15__ {TYPE_6__ hwss; } ;
struct TYPE_13__ {scalar_t__ sink_signal; } ;
struct TYPE_11__ {int (* dp_unblank ) (TYPE_8__*,struct encoder_unblank_param*) ;} ;


 scalar_t__ SIGNAL_TYPE_EDP ;
 scalar_t__ dc_is_dp_signal (int ) ;
 int stub1 (TYPE_8__*,struct encoder_unblank_param*) ;
 int stub2 (struct dc_link*,int) ;

void dce110_unblank_stream(struct pipe_ctx *pipe_ctx,
  struct dc_link_settings *link_settings)
{
 struct encoder_unblank_param params = { { 0 } };
 struct dc_stream_state *stream = pipe_ctx->stream;
 struct dc_link *link = stream->link;


 params.timing = pipe_ctx->stream->timing;
 params.link_settings.link_rate = link_settings->link_rate;

 if (dc_is_dp_signal(pipe_ctx->stream->signal))
  pipe_ctx->stream_res.stream_enc->funcs->dp_unblank(pipe_ctx->stream_res.stream_enc, &params);

 if (link->local_sink && link->local_sink->sink_signal == SIGNAL_TYPE_EDP) {
  link->dc->hwss.edp_backlight_control(link, 1);
 }
}
