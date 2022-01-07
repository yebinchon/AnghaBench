
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vm; } ;
struct omap_hdmi {int lock; TYPE_2__* dss; TYPE_1__ cfg; } ;
struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_4__ {int dispc; } ;


 int dispc_set_tv_pclk (int ,int) ;
 int drm_display_mode_to_videomode (struct drm_display_mode const*,int *) ;
 struct omap_hdmi* dssdev_to_hdmi (struct omap_dss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_display_set_timings(struct omap_dss_device *dssdev,
         const struct drm_display_mode *mode)
{
 struct omap_hdmi *hdmi = dssdev_to_hdmi(dssdev);

 mutex_lock(&hdmi->lock);

 drm_display_mode_to_videomode(mode, &hdmi->cfg.vm);

 dispc_set_tv_pclk(hdmi->dss->dispc, mode->clock * 1000);

 mutex_unlock(&hdmi->lock);
}
