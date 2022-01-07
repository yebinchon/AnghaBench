
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdi_device {int pixelclock; } ;
struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int clock; } ;


 struct sdi_device* dssdev_to_sdi (struct omap_dss_device*) ;

__attribute__((used)) static void sdi_set_timings(struct omap_dss_device *dssdev,
       const struct drm_display_mode *mode)
{
 struct sdi_device *sdi = dssdev_to_sdi(dssdev);

 sdi->pixelclock = mode->clock * 1000;
}
