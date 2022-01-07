
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct omap_hdmi {TYPE_1__ wp; } ;


 int HDMI_WP_SYSCONFIG ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 int hdmi_wp_audio_core_req_enable (TYPE_1__*,int) ;
 int hdmi_wp_audio_enable (TYPE_1__*,int) ;

__attribute__((used)) static void hdmi_start_audio_stream(struct omap_hdmi *hd)
{
 REG_FLD_MOD(hd->wp.base, HDMI_WP_SYSCONFIG, 1, 3, 2);
 hdmi_wp_audio_enable(&hd->wp, 1);
 hdmi_wp_audio_core_req_enable(&hd->wp, 1);
}
