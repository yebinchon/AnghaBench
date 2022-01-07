
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {int fbdev; } ;
struct drm_device {struct tegra_drm* dev_private; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int tegra_fbdev_create (struct drm_device*) ;

int tegra_drm_fb_prepare(struct drm_device *drm)
{
 return 0;
}
