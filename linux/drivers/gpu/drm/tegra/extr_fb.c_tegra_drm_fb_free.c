
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {int fbdev; } ;
struct drm_device {struct tegra_drm* dev_private; } ;


 int tegra_fbdev_free (int ) ;

void tegra_drm_fb_free(struct drm_device *drm)
{





}
