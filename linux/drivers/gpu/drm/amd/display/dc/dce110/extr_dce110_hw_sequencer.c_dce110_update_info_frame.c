
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int encoder_info_frame; TYPE_3__* stream_enc; } ;
struct pipe_ctx {TYPE_2__ stream_res; TYPE_5__* stream; } ;
struct TYPE_9__ {int signal; } ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int (* update_dp_info_packets ) (TYPE_3__*,int *) ;int (* update_hdmi_info_packets ) (TYPE_3__*,int *) ;} ;


 int ASSERT (TYPE_5__*) ;
 int dc_is_dp_signal (int ) ;
 int dc_is_hdmi_tmds_signal (int ) ;
 int stub1 (TYPE_3__*,int *) ;
 int stub2 (TYPE_3__*,int *) ;

void dce110_update_info_frame(struct pipe_ctx *pipe_ctx)
{
 bool is_hdmi_tmds;
 bool is_dp;

 ASSERT(pipe_ctx->stream);

 if (pipe_ctx->stream_res.stream_enc == ((void*)0))
  return;

 is_hdmi_tmds = dc_is_hdmi_tmds_signal(pipe_ctx->stream->signal);
 is_dp = dc_is_dp_signal(pipe_ctx->stream->signal);

 if (!is_hdmi_tmds && !is_dp)
  return;

 if (is_hdmi_tmds)
  pipe_ctx->stream_res.stream_enc->funcs->update_hdmi_info_packets(
   pipe_ctx->stream_res.stream_enc,
   &pipe_ctx->stream_res.encoder_info_frame);
 else
  pipe_ctx->stream_res.stream_enc->funcs->update_dp_info_packets(
   pipe_ctx->stream_res.stream_enc,
   &pipe_ctx->stream_res.encoder_info_frame);
}
