
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;


 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int HDMI_GC ;
 int HDMI_GC_AVMUTE ;
 int REG_UPDATE (int ,int ,unsigned int) ;

__attribute__((used)) static void dce110_stream_encoder_set_avmute(
 struct stream_encoder *enc,
 bool enable)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);
 unsigned int value = enable ? 1 : 0;

 REG_UPDATE(HDMI_GC, HDMI_GC_AVMUTE, value);
}
