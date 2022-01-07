
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int valid; } ;
struct TYPE_19__ {int valid; } ;
struct TYPE_18__ {int valid; } ;
struct TYPE_15__ {int valid; } ;
struct TYPE_17__ {int valid; } ;
struct TYPE_12__ {int valid; } ;
struct encoder_info_frame {TYPE_11__ gamut; TYPE_8__ hdrsmd; TYPE_6__ spd; TYPE_2__ vsc; TYPE_4__ vendor; TYPE_10__ avi; } ;
struct TYPE_14__ {struct encoder_info_frame encoder_info_frame; } ;
struct pipe_ctx {TYPE_3__* stream; TYPE_1__ stream_res; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
struct TYPE_16__ {int signal; } ;


 int SIGNAL_TYPE_NONE ;
 scalar_t__ dc_is_dp_signal (int) ;
 scalar_t__ dc_is_hdmi_signal (int) ;
 int patch_gamut_packet_checksum (TYPE_11__*) ;
 int set_avi_info_frame (TYPE_10__*,struct pipe_ctx*) ;
 int set_hdr_static_info_packet (TYPE_8__*,TYPE_3__*) ;
 int set_spd_info_packet (TYPE_6__*,TYPE_3__*) ;
 int set_vendor_info_packet (TYPE_4__*,TYPE_3__*) ;
 int set_vsc_info_packet (TYPE_2__*,TYPE_3__*) ;

void resource_build_info_frame(struct pipe_ctx *pipe_ctx)
{
 enum signal_type signal = SIGNAL_TYPE_NONE;
 struct encoder_info_frame *info = &pipe_ctx->stream_res.encoder_info_frame;


 info->avi.valid = 0;
 info->gamut.valid = 0;
 info->vendor.valid = 0;
 info->spd.valid = 0;
 info->hdrsmd.valid = 0;
 info->vsc.valid = 0;

 signal = pipe_ctx->stream->signal;


 if (dc_is_hdmi_signal(signal)) {
  set_avi_info_frame(&info->avi, pipe_ctx);

  set_vendor_info_packet(&info->vendor, pipe_ctx->stream);

  set_spd_info_packet(&info->spd, pipe_ctx->stream);

  set_hdr_static_info_packet(&info->hdrsmd, pipe_ctx->stream);

 } else if (dc_is_dp_signal(signal)) {
  set_vsc_info_packet(&info->vsc, pipe_ctx->stream);

  set_spd_info_packet(&info->spd, pipe_ctx->stream);

  set_hdr_static_info_packet(&info->hdrsmd, pipe_ctx->stream);
 }

 patch_gamut_packet_checksum(&info->gamut);
}
