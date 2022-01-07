
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rk3066_hdmi {int tmdsclk; int dev; } ;


 int DEFAULT_PLLA_RATE ;
 int DRM_DEV_DEBUG (int ,char*,int,...) ;
 int HDMI_SYS_CTRL ;
 int HDMI_SYS_PLLB_RESET ;
 int HDMI_SYS_PLL_RESET_MASK ;
 int HDMI_SYS_POWER_MODE_A ;
 int HDMI_SYS_POWER_MODE_D ;
 int HDMI_SYS_POWER_MODE_MASK ;
 int hdmi_modb (struct rk3066_hdmi*,int ,int ,int) ;
 int hdmi_writeb (struct rk3066_hdmi*,int ,int) ;
 int rk3066_hdmi_get_power_mode (struct rk3066_hdmi*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rk3066_hdmi_set_power_mode(struct rk3066_hdmi *hdmi, int mode)
{
 u8 current_mode, next_mode;
 u8 i = 0;

 current_mode = rk3066_hdmi_get_power_mode(hdmi);

 DRM_DEV_DEBUG(hdmi->dev, "mode         :%d\n", mode);
 DRM_DEV_DEBUG(hdmi->dev, "current_mode :%d\n", current_mode);

 if (current_mode == mode)
  return;

 do {
  if (current_mode > mode) {
   next_mode = current_mode / 2;
  } else {
   if (current_mode < HDMI_SYS_POWER_MODE_A)
    next_mode = HDMI_SYS_POWER_MODE_A;
   else
    next_mode = current_mode * 2;
  }

  DRM_DEV_DEBUG(hdmi->dev, "%d: next_mode :%d\n", i, next_mode);

  if (next_mode != HDMI_SYS_POWER_MODE_D) {
   hdmi_modb(hdmi, HDMI_SYS_CTRL,
      HDMI_SYS_POWER_MODE_MASK, next_mode);
  } else {
   hdmi_writeb(hdmi, HDMI_SYS_CTRL,
        HDMI_SYS_POWER_MODE_D |
        HDMI_SYS_PLL_RESET_MASK);
   usleep_range(90, 100);
   hdmi_writeb(hdmi, HDMI_SYS_CTRL,
        HDMI_SYS_POWER_MODE_D |
        HDMI_SYS_PLLB_RESET);
   usleep_range(90, 100);
   hdmi_writeb(hdmi, HDMI_SYS_CTRL,
        HDMI_SYS_POWER_MODE_D);
  }
  current_mode = next_mode;
  i = i + 1;
 } while ((next_mode != mode) && (i < 5));







 if (mode < HDMI_SYS_POWER_MODE_D)
  hdmi->tmdsclk = DEFAULT_PLLA_RATE;
}
