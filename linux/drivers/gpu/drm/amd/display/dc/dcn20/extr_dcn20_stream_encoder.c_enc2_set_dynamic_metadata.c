
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;
typedef enum dynamic_metadata_mode { ____Placeholder_dynamic_metadata_mode } dynamic_metadata_mode ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DIG_FE_CNTL ;
 int DME_CONTROL ;
 int DOLBY_VISION_EN ;
 int DP_SEC_METADATA_PACKET_ENABLE ;
 int DP_SEC_METADATA_PACKET_LINE ;
 int DP_SEC_METADATA_PACKET_LINE_REFERENCE ;
 int DP_SEC_METADATA_TRANSMISSION ;
 int HDMI_METADATA_PACKET_CONTROL ;
 int HDMI_METADATA_PACKET_ENABLE ;
 int HDMI_METADATA_PACKET_LINE ;
 int HDMI_METADATA_PACKET_LINE_REFERENCE ;
 int METADATA_ENGINE_EN ;
 int METADATA_HUBP_REQUESTOR_ID ;
 int METADATA_STREAM_TYPE ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int ,int ,int) ;
 int dmdata_dolby_vision ;
 int dmdata_dp ;

void enc2_set_dynamic_metadata(struct stream_encoder *enc,
  bool enable_dme,
  uint32_t hubp_requestor_id,
  enum dynamic_metadata_mode dmdata_mode)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);

 if (enable_dme) {
  REG_UPDATE_2(DME_CONTROL,
    METADATA_HUBP_REQUESTOR_ID, hubp_requestor_id,
    METADATA_STREAM_TYPE, (dmdata_mode == dmdata_dolby_vision) ? 1 : 0);




  if (dmdata_mode == dmdata_dp)
   REG_UPDATE_3(DP_SEC_METADATA_TRANSMISSION,
     DP_SEC_METADATA_PACKET_ENABLE, 1,
     DP_SEC_METADATA_PACKET_LINE_REFERENCE, 0,
     DP_SEC_METADATA_PACKET_LINE, 20);
  else {
   REG_UPDATE_3(HDMI_METADATA_PACKET_CONTROL,
     HDMI_METADATA_PACKET_ENABLE, 1,
     HDMI_METADATA_PACKET_LINE_REFERENCE, 0,
     HDMI_METADATA_PACKET_LINE, 2);

   if (dmdata_mode == dmdata_dolby_vision)
    REG_UPDATE(DIG_FE_CNTL,
      DOLBY_VISION_EN, 1);
  }

  REG_UPDATE(DME_CONTROL,
    METADATA_ENGINE_EN, 1);
 } else {
  REG_UPDATE(DME_CONTROL,
    METADATA_ENGINE_EN, 0);

  if (dmdata_mode == dmdata_dp)
   REG_UPDATE(DP_SEC_METADATA_TRANSMISSION,
     DP_SEC_METADATA_PACKET_ENABLE, 0);
  else {
   REG_UPDATE(HDMI_METADATA_PACKET_CONTROL,
     HDMI_METADATA_PACKET_ENABLE, 0);
   REG_UPDATE(DIG_FE_CNTL,
     DOLBY_VISION_EN, 0);
  }
 }
}
