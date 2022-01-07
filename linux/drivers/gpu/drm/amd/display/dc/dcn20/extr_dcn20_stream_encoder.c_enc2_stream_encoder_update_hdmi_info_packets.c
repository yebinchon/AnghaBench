
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct encoder_info_frame {int hdrsmd; int spd; int vendor; int gamut; int hfvsif; int avi; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int HDMI_DB_CONTROL ;
 int HDMI_DB_DISABLE ;
 int REG_UPDATE (int ,int ,int) ;
 int enc2_update_hdmi_info_packet (struct dcn10_stream_encoder*,int,int *) ;

__attribute__((used)) static void enc2_stream_encoder_update_hdmi_info_packets(
 struct stream_encoder *enc,
 const struct encoder_info_frame *info_frame)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);


 REG_UPDATE(HDMI_DB_CONTROL, HDMI_DB_DISABLE, 1);


 enc2_update_hdmi_info_packet(enc1, 0, &info_frame->avi);
 enc2_update_hdmi_info_packet(enc1, 5, &info_frame->hfvsif);
 enc2_update_hdmi_info_packet(enc1, 2, &info_frame->gamut);
 enc2_update_hdmi_info_packet(enc1, 1, &info_frame->vendor);
 enc2_update_hdmi_info_packet(enc1, 3, &info_frame->spd);
 enc2_update_hdmi_info_packet(enc1, 4, &info_frame->hdrsmd);
}
