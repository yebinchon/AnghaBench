
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rk3066_hdmi {int dummy; } ;


 int HDMI_SYS_CTRL ;
 int HDMI_SYS_PLL_RESET ;
 int HDMI_SYS_PLL_RESET_MASK ;
 int hdmi_modb (struct rk3066_hdmi*,int ,int ,int ) ;
 int hdmi_writeb (struct rk3066_hdmi*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void
rk3066_hdmi_phy_write(struct rk3066_hdmi *hdmi, u16 offset, u8 value)
{
 hdmi_writeb(hdmi, offset, value);
 hdmi_modb(hdmi, HDMI_SYS_CTRL,
    HDMI_SYS_PLL_RESET_MASK, HDMI_SYS_PLL_RESET);
 usleep_range(90, 100);
 hdmi_modb(hdmi, HDMI_SYS_CTRL, HDMI_SYS_PLL_RESET_MASK, 0);
 usleep_range(900, 1000);
}
