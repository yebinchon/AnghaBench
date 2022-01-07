
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stream_encoder {int dummy; } ;
struct encoder_info_frame {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_SEC_CNTL ;
 int DP_SEC_METADATA_PACKET_ENABLE ;
 int DP_SEC_METADATA_TRANSMISSION ;
 int DP_SEC_STREAM_ENABLE ;
 int REG_GET (int ,int ,scalar_t__*) ;
 int REG_UPDATE (int ,int ,int) ;
 int enc1_stream_encoder_update_dp_info_packets (struct stream_encoder*,struct encoder_info_frame const*) ;

__attribute__((used)) static void enc2_stream_encoder_update_dp_info_packets(
 struct stream_encoder *enc,
 const struct encoder_info_frame *info_frame)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);
 uint32_t dmdata_packet_enabled = 0;

 enc1_stream_encoder_update_dp_info_packets(enc, info_frame);


 REG_GET(DP_SEC_METADATA_TRANSMISSION,
   DP_SEC_METADATA_PACKET_ENABLE, &dmdata_packet_enabled);

 if (dmdata_packet_enabled)
  REG_UPDATE(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);
}
