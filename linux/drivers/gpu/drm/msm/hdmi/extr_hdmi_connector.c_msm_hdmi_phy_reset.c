
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi {int dummy; } ;


 unsigned int HDMI_PHY_CTRL_SW_RESET ;
 unsigned int HDMI_PHY_CTRL_SW_RESET_LOW ;
 unsigned int HDMI_PHY_CTRL_SW_RESET_PLL ;
 unsigned int HDMI_PHY_CTRL_SW_RESET_PLL_LOW ;
 int REG_HDMI_PHY_CTRL ;
 unsigned int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,unsigned int) ;
 int msleep (int) ;

__attribute__((used)) static void msm_hdmi_phy_reset(struct hdmi *hdmi)
{
 unsigned int val;

 val = hdmi_read(hdmi, REG_HDMI_PHY_CTRL);

 if (val & HDMI_PHY_CTRL_SW_RESET_LOW) {

  hdmi_write(hdmi, REG_HDMI_PHY_CTRL,
    val & ~HDMI_PHY_CTRL_SW_RESET);
 } else {

  hdmi_write(hdmi, REG_HDMI_PHY_CTRL,
    val | HDMI_PHY_CTRL_SW_RESET);
 }

 if (val & HDMI_PHY_CTRL_SW_RESET_PLL_LOW) {

  hdmi_write(hdmi, REG_HDMI_PHY_CTRL,
    val & ~HDMI_PHY_CTRL_SW_RESET_PLL);
 } else {

  hdmi_write(hdmi, REG_HDMI_PHY_CTRL,
    val | HDMI_PHY_CTRL_SW_RESET_PLL);
 }

 msleep(100);

 if (val & HDMI_PHY_CTRL_SW_RESET_LOW) {

  hdmi_write(hdmi, REG_HDMI_PHY_CTRL,
    val | HDMI_PHY_CTRL_SW_RESET);
 } else {

  hdmi_write(hdmi, REG_HDMI_PHY_CTRL,
    val & ~HDMI_PHY_CTRL_SW_RESET);
 }

 if (val & HDMI_PHY_CTRL_SW_RESET_PLL_LOW) {

  hdmi_write(hdmi, REG_HDMI_PHY_CTRL,
    val | HDMI_PHY_CTRL_SW_RESET_PLL);
 } else {

  hdmi_write(hdmi, REG_HDMI_PHY_CTRL,
    val & ~HDMI_PHY_CTRL_SW_RESET_PLL);
 }
}
