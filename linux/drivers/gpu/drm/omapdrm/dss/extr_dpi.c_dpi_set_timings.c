
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct dpi_data {int pixelclock; int lock; } ;


 int DSSDBG (char*) ;
 struct dpi_data* dpi_get_data_from_dssdev (struct omap_dss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dpi_set_timings(struct omap_dss_device *dssdev,
       const struct drm_display_mode *mode)
{
 struct dpi_data *dpi = dpi_get_data_from_dssdev(dssdev);

 DSSDBG("dpi_set_timings\n");

 mutex_lock(&dpi->lock);

 dpi->pixelclock = mode->clock * 1000;

 mutex_unlock(&dpi->lock);
}
