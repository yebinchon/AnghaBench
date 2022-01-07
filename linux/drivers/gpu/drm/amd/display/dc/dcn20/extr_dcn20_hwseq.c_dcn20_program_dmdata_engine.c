
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


struct stream_encoder {TYPE_6__* funcs; } ;
struct TYPE_9__ {int valid; } ;
struct TYPE_10__ {TYPE_3__ hdrsmd; } ;
struct TYPE_11__ {TYPE_4__ encoder_info_frame; struct stream_encoder* stream_enc; } ;
struct TYPE_7__ {struct hubp* hubp; } ;
struct pipe_ctx {TYPE_5__ stream_res; struct dc_stream_state* stream; TYPE_1__ plane_res; } ;
struct hubp {int inst; } ;
struct TYPE_8__ {scalar_t__ quad_part; } ;
struct dc_stream_state {TYPE_2__ dmdata_address; int signal; } ;
typedef enum dynamic_metadata_mode { ____Placeholder_dynamic_metadata_mode } dynamic_metadata_mode ;
struct TYPE_12__ {int (* set_dynamic_metadata ) (struct stream_encoder*,int,int ,int) ;} ;


 scalar_t__ dc_is_dp_signal (int ) ;
 int dmdata_dp ;
 int dmdata_hdmi ;
 int stub1 (struct stream_encoder*,int,int ,int) ;

__attribute__((used)) static void dcn20_program_dmdata_engine(struct pipe_ctx *pipe_ctx)
{
 struct dc_stream_state *stream = pipe_ctx->stream;
 struct hubp *hubp = pipe_ctx->plane_res.hubp;
 bool enable = 0;
 struct stream_encoder *stream_enc = pipe_ctx->stream_res.stream_enc;
 enum dynamic_metadata_mode mode = dc_is_dp_signal(stream->signal)
       ? dmdata_dp
       : dmdata_hdmi;


 if (pipe_ctx->stream->dmdata_address.quad_part != 0) {
  pipe_ctx->stream_res.encoder_info_frame.hdrsmd.valid = 0;
  enable = 1;
 }

 if (!hubp)
  return;

 if (!stream_enc || !stream_enc->funcs->set_dynamic_metadata)
  return;

 stream_enc->funcs->set_dynamic_metadata(stream_enc, enable,
      hubp->inst, mode);
}
