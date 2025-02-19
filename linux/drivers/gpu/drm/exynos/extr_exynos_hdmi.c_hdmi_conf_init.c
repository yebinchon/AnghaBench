
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_context {TYPE_1__* drv_data; scalar_t__ dvi_mode; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int HDMI_BLUE_SCR_EN ;
 int HDMI_CON_0 ;
 int HDMI_CON_1 ;
 int HDMI_CON_2 ;
 int HDMI_GUARD_BAND_DIS ;
 int HDMI_INTC_CON ;
 int HDMI_INTC_EN_GLOBAL ;
 int HDMI_INTC_EN_HPD_PLUG ;
 int HDMI_INTC_EN_HPD_UNPLUG ;
 int HDMI_MODE_DVI_EN ;
 int HDMI_MODE_HDMI_EN ;
 int HDMI_MODE_MASK ;
 int HDMI_MODE_SEL ;
 scalar_t__ HDMI_TYPE13 ;
 int HDMI_V13_ACR_CON ;
 int HDMI_V13_AUI_CON ;
 int HDMI_V13_AVI_BYTE (int ) ;
 int HDMI_V13_AVI_CON ;
 int HDMI_V13_BLUE_SCREEN_0 ;
 int HDMI_V13_BLUE_SCREEN_1 ;
 int HDMI_V13_BLUE_SCREEN_2 ;
 int HDMI_V13_SPD_CON ;
 int HDMI_VID_PREAMBLE_DIS ;
 int hdmi_reg_infoframes (struct hdmi_context*) ;
 int hdmi_reg_writeb (struct hdmi_context*,int ,int) ;
 int hdmi_reg_writemask (struct hdmi_context*,int ,int,int) ;

__attribute__((used)) static void hdmi_conf_init(struct hdmi_context *hdata)
{

 hdmi_reg_writemask(hdata, HDMI_INTC_CON, 0, HDMI_INTC_EN_GLOBAL |
  HDMI_INTC_EN_HPD_PLUG | HDMI_INTC_EN_HPD_UNPLUG);


 hdmi_reg_writemask(hdata, HDMI_MODE_SEL,
  HDMI_MODE_HDMI_EN, HDMI_MODE_MASK);

 hdmi_reg_writeb(hdata, HDMI_CON_2, 0);

 hdmi_reg_writemask(hdata, HDMI_CON_0, 0, HDMI_BLUE_SCR_EN);

 if (hdata->dvi_mode) {
  hdmi_reg_writemask(hdata, HDMI_MODE_SEL,
    HDMI_MODE_DVI_EN, HDMI_MODE_MASK);
  hdmi_reg_writeb(hdata, HDMI_CON_2,
    HDMI_VID_PREAMBLE_DIS | HDMI_GUARD_BAND_DIS);
 }

 if (hdata->drv_data->type == HDMI_TYPE13) {

  hdmi_reg_writeb(hdata, HDMI_V13_BLUE_SCREEN_0, 0x12);
  hdmi_reg_writeb(hdata, HDMI_V13_BLUE_SCREEN_1, 0x34);
  hdmi_reg_writeb(hdata, HDMI_V13_BLUE_SCREEN_2, 0x56);


  hdmi_reg_writeb(hdata, HDMI_V13_AVI_CON, 0x02);

  hdmi_reg_writeb(hdata, HDMI_V13_AVI_BYTE(0), 0 << 5);
  hdmi_reg_writemask(hdata, HDMI_CON_1, 0x10 << 5, 0x11 << 5);

  hdmi_reg_writeb(hdata, HDMI_V13_SPD_CON, 0x02);
  hdmi_reg_writeb(hdata, HDMI_V13_AUI_CON, 0x02);
  hdmi_reg_writeb(hdata, HDMI_V13_ACR_CON, 0x04);
 } else {
  hdmi_reg_infoframes(hdata);


  hdmi_reg_writemask(hdata, HDMI_CON_1, 2, 3 << 5);
 }
}
