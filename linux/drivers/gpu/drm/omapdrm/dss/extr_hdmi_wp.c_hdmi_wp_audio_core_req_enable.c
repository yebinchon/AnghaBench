
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_wp_data {int base; } ;


 int HDMI_WP_AUDIO_CTRL ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;

int hdmi_wp_audio_core_req_enable(struct hdmi_wp_data *wp, bool enable)
{
 REG_FLD_MOD(wp->base, HDMI_WP_AUDIO_CTRL, enable, 30, 30);

 return 0;
}
