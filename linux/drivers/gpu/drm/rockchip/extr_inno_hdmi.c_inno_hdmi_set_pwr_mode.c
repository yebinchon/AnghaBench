
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int HDMI_PHY_CHG_PWR ;
 int HDMI_PHY_DRIVER ;
 int HDMI_PHY_PRE_EMPHASIS ;
 int HDMI_PHY_SYNC ;
 int HDMI_PHY_SYS_CTL ;


 int hdmi_writeb (struct inno_hdmi*,int ,int) ;
 int inno_hdmi_sys_power (struct inno_hdmi*,int) ;

__attribute__((used)) static void inno_hdmi_set_pwr_mode(struct inno_hdmi *hdmi, int mode)
{
 switch (mode) {
 case 128:
  inno_hdmi_sys_power(hdmi, 0);

  hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x6f);
  hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0xbb);

  hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
  hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x14);
  hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x10);
  hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x0f);
  hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x00);
  hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x01);

  inno_hdmi_sys_power(hdmi, 1);
  break;

 case 129:
  inno_hdmi_sys_power(hdmi, 0);
  hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0x00);
  hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x00);
  hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x00);
  hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);

  break;

 default:
  DRM_DEV_ERROR(hdmi->dev, "Unknown power mode %d\n", mode);
 }
}
