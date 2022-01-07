
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


struct TYPE_10__ {TYPE_6__* stream_enc; } ;
struct pipe_ctx {TYPE_4__ stream_res; struct dc_stream_state* stream; } ;
struct dc_stream_state {int signal; struct dc_link* link; } ;
struct dc_link {TYPE_2__* dc; TYPE_5__* local_sink; } ;
struct TYPE_12__ {TYPE_3__* funcs; } ;
struct TYPE_11__ {scalar_t__ sink_signal; } ;
struct TYPE_9__ {int (* dp_blank ) (TYPE_6__*) ;} ;
struct TYPE_7__ {int (* edp_backlight_control ) (struct dc_link*,int) ;} ;
struct TYPE_8__ {TYPE_1__ hwss; } ;


 scalar_t__ SIGNAL_TYPE_EDP ;
 scalar_t__ dc_is_dp_signal (int ) ;
 int dc_link_set_abm_disable (struct dc_link*) ;
 int stub1 (struct dc_link*,int) ;
 int stub2 (TYPE_6__*) ;

void dce110_blank_stream(struct pipe_ctx *pipe_ctx)
{
 struct dc_stream_state *stream = pipe_ctx->stream;
 struct dc_link *link = stream->link;

 if (link->local_sink && link->local_sink->sink_signal == SIGNAL_TYPE_EDP) {
  link->dc->hwss.edp_backlight_control(link, 0);
  dc_link_set_abm_disable(link);
 }

 if (dc_is_dp_signal(pipe_ctx->stream->signal))
  pipe_ctx->stream_res.stream_enc->funcs->dp_blank(pipe_ctx->stream_res.stream_enc);
}
