
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3066_hdmi {int tmdsclk; } ;


 int HDMI_DEEP_COLOR_MODE ;
 int hdmi_writeb (struct rk3066_hdmi*,int ,int) ;
 int rk3066_hdmi_phy_write (struct rk3066_hdmi*,int,int) ;

__attribute__((used)) static void rk3066_hdmi_config_phy(struct rk3066_hdmi *hdmi)
{

 hdmi_writeb(hdmi, HDMI_DEEP_COLOR_MODE, 0x22);






 if (hdmi->tmdsclk > 100000000) {
  rk3066_hdmi_phy_write(hdmi, 0x158, 0x0E);
  rk3066_hdmi_phy_write(hdmi, 0x15c, 0x00);
  rk3066_hdmi_phy_write(hdmi, 0x160, 0x60);
  rk3066_hdmi_phy_write(hdmi, 0x164, 0x00);
  rk3066_hdmi_phy_write(hdmi, 0x168, 0xDA);
  rk3066_hdmi_phy_write(hdmi, 0x16c, 0xA1);
  rk3066_hdmi_phy_write(hdmi, 0x170, 0x0e);
  rk3066_hdmi_phy_write(hdmi, 0x174, 0x22);
  rk3066_hdmi_phy_write(hdmi, 0x178, 0x00);
 } else if (hdmi->tmdsclk > 50000000) {
  rk3066_hdmi_phy_write(hdmi, 0x158, 0x06);
  rk3066_hdmi_phy_write(hdmi, 0x15c, 0x00);
  rk3066_hdmi_phy_write(hdmi, 0x160, 0x60);
  rk3066_hdmi_phy_write(hdmi, 0x164, 0x00);
  rk3066_hdmi_phy_write(hdmi, 0x168, 0xCA);
  rk3066_hdmi_phy_write(hdmi, 0x16c, 0xA3);
  rk3066_hdmi_phy_write(hdmi, 0x170, 0x0e);
  rk3066_hdmi_phy_write(hdmi, 0x174, 0x20);
  rk3066_hdmi_phy_write(hdmi, 0x178, 0x00);
 } else {
  rk3066_hdmi_phy_write(hdmi, 0x158, 0x02);
  rk3066_hdmi_phy_write(hdmi, 0x15c, 0x00);
  rk3066_hdmi_phy_write(hdmi, 0x160, 0x60);
  rk3066_hdmi_phy_write(hdmi, 0x164, 0x00);
  rk3066_hdmi_phy_write(hdmi, 0x168, 0xC2);
  rk3066_hdmi_phy_write(hdmi, 0x16c, 0xA2);
  rk3066_hdmi_phy_write(hdmi, 0x170, 0x0e);
  rk3066_hdmi_phy_write(hdmi, 0x174, 0x20);
  rk3066_hdmi_phy_write(hdmi, 0x178, 0x00);
 }
}
