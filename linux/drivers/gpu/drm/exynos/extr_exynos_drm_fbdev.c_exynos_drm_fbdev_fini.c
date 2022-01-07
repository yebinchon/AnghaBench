
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_private {int * fb_helper; } ;
struct exynos_drm_fbdev {int dummy; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;


 int exynos_drm_fbdev_destroy (struct drm_device*,int *) ;
 int kfree (struct exynos_drm_fbdev*) ;
 struct exynos_drm_fbdev* to_exynos_fbdev (int *) ;

void exynos_drm_fbdev_fini(struct drm_device *dev)
{
 struct exynos_drm_private *private = dev->dev_private;
 struct exynos_drm_fbdev *fbdev;

 if (!private || !private->fb_helper)
  return;

 fbdev = to_exynos_fbdev(private->fb_helper);

 exynos_drm_fbdev_destroy(dev, private->fb_helper);
 kfree(fbdev);
 private->fb_helper = ((void*)0);
}
