
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct stream_encoder {int dummy; } ;
struct TYPE_2__ {int valid; } ;
struct encoder_info_frame {TYPE_1__ hdrsmd; TYPE_1__ spd; TYPE_1__ vsc; } ;
struct dce110_stream_encoder {int dummy; } ;


 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_SEC_CNTL ;
 int DP_SEC_GSP0_ENABLE ;
 int DP_SEC_GSP2_ENABLE ;
 int DP_SEC_GSP3_ENABLE ;
 int DP_SEC_STREAM_ENABLE ;
 scalar_t__ REG_READ (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int dce110_update_generic_info_packet (struct dce110_stream_encoder*,int,TYPE_1__*) ;

__attribute__((used)) static void dce110_stream_encoder_update_dp_info_packets(
 struct stream_encoder *enc,
 const struct encoder_info_frame *info_frame)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);
 uint32_t value = 0;

 if (info_frame->vsc.valid)
  dce110_update_generic_info_packet(
     enc110,
     0,
     &info_frame->vsc);

 if (info_frame->spd.valid)
  dce110_update_generic_info_packet(
    enc110,
    2,
    &info_frame->spd);

 if (info_frame->hdrsmd.valid)
  dce110_update_generic_info_packet(
    enc110,
    3,
    &info_frame->hdrsmd);




 REG_UPDATE(DP_SEC_CNTL, DP_SEC_GSP0_ENABLE, info_frame->vsc.valid);
 REG_UPDATE(DP_SEC_CNTL, DP_SEC_GSP2_ENABLE, info_frame->spd.valid);
 REG_UPDATE(DP_SEC_CNTL, DP_SEC_GSP3_ENABLE, info_frame->hdrsmd.valid);
 value = REG_READ(DP_SEC_CNTL);
 if (value)
  REG_UPDATE(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);
}
