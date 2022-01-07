
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_wp_data {int base; } ;


 int HDMI_WP_VIDEO_CFG ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;

int hdmi_wp_video_start(struct hdmi_wp_data *wp)
{
 REG_FLD_MOD(wp->base, HDMI_WP_VIDEO_CFG, 1, 31, 31);

 return 0;
}
