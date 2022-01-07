
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_wp_data {int base; } ;


 int DSSERR (char*) ;
 int HDMI_IRQ_VIDEO_FRAME_DONE ;
 int HDMI_WP_IRQSTATUS ;
 int HDMI_WP_IRQSTATUS_RAW ;
 int HDMI_WP_VIDEO_CFG ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_write_reg (int ,int ,int) ;
 int msleep (int) ;

void hdmi_wp_video_stop(struct hdmi_wp_data *wp)
{
 int i;

 hdmi_write_reg(wp->base, HDMI_WP_IRQSTATUS, HDMI_IRQ_VIDEO_FRAME_DONE);

 REG_FLD_MOD(wp->base, HDMI_WP_VIDEO_CFG, 0, 31, 31);

 for (i = 0; i < 50; ++i) {
  u32 v;

  msleep(20);

  v = hdmi_read_reg(wp->base, HDMI_WP_IRQSTATUS_RAW);
  if (v & HDMI_IRQ_VIDEO_FRAME_DONE)
   return;
 }

 DSSERR("no HDMI FRAMEDONE when disabling output\n");
}
