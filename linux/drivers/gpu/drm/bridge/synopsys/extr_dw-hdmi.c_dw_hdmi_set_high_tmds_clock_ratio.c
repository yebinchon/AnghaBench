
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long mtmdsclock; } ;
struct TYPE_4__ {TYPE_1__ video_mode; } ;
struct dw_hdmi {int ddc; TYPE_2__ hdmi_data; } ;


 unsigned long HDMI14_MAX_TMDSCLK ;
 int drm_scdc_set_high_tmds_clock_ratio (int ,int) ;
 scalar_t__ dw_hdmi_support_scdc (struct dw_hdmi*) ;

void dw_hdmi_set_high_tmds_clock_ratio(struct dw_hdmi *hdmi)
{
 unsigned long mtmdsclock = hdmi->hdmi_data.video_mode.mtmdsclock;


 if (dw_hdmi_support_scdc(hdmi)) {
  if (mtmdsclock > HDMI14_MAX_TMDSCLK)
   drm_scdc_set_high_tmds_clock_ratio(hdmi->ddc, 1);
  else
   drm_scdc_set_high_tmds_clock_ratio(hdmi->ddc, 0);
 }
}
