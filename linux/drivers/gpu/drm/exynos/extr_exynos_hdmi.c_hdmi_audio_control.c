
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mute; } ;
struct hdmi_context {scalar_t__ dvi_mode; TYPE_1__ audio; } ;


 int HDMI_ASP_DIS ;
 int HDMI_ASP_EN ;
 int HDMI_ASP_MASK ;
 int HDMI_AUI_CON ;
 int HDMI_AUI_CON_NO_TRAN ;
 int HDMI_AVI_CON_EVERY_VSYNC ;
 int HDMI_CON_0 ;
 int hdmi_reg_writeb (struct hdmi_context*,int ,int ) ;
 int hdmi_reg_writemask (struct hdmi_context*,int ,int ,int ) ;

__attribute__((used)) static void hdmi_audio_control(struct hdmi_context *hdata)
{
 bool enable = !hdata->audio.mute;

 if (hdata->dvi_mode)
  return;

 hdmi_reg_writeb(hdata, HDMI_AUI_CON, enable ?
   HDMI_AVI_CON_EVERY_VSYNC : HDMI_AUI_CON_NO_TRAN);
 hdmi_reg_writemask(hdata, HDMI_CON_0, enable ?
   HDMI_ASP_EN : HDMI_ASP_DIS, HDMI_ASP_MASK);
}
