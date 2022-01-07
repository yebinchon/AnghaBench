
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hdmi_audio_infoframe {int dummy; } ;
struct TYPE_2__ {struct hdmi_audio_infoframe infoframe; } ;
struct hdmi_context {TYPE_1__ audio; } ;
typedef int buf ;


 int AUDIO ;
 int HDMI_AUI_CON ;
 int HDMI_AUI_CON_EVERY_VSYNC ;
 int HDMI_AUI_HEADER0 ;
 int HDMI_INFOFRAME_SIZE (int ) ;
 int hdmi_audio_infoframe_pack (struct hdmi_audio_infoframe*,int *,int) ;
 int hdmi_reg_write_buf (struct hdmi_context*,int ,int *,int) ;
 int hdmi_reg_writeb (struct hdmi_context*,int ,int ) ;

__attribute__((used)) static int hdmi_audio_infoframe_apply(struct hdmi_context *hdata)
{
 struct hdmi_audio_infoframe *infoframe = &hdata->audio.infoframe;
 u8 buf[HDMI_INFOFRAME_SIZE(AUDIO)];
 int len;

 len = hdmi_audio_infoframe_pack(infoframe, buf, sizeof(buf));
 if (len < 0)
  return len;

 hdmi_reg_writeb(hdata, HDMI_AUI_CON, HDMI_AUI_CON_EVERY_VSYNC);
 hdmi_reg_write_buf(hdata, HDMI_AUI_HEADER0, buf, len);

 return 0;
}
