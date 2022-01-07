
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_mode_config_helper_resume (struct drm_device*) ;

__attribute__((used)) static void exynos_drm_resume(struct device *dev)
{
 struct drm_device *drm_dev = dev_get_drvdata(dev);

 drm_mode_config_helper_resume(drm_dev);
}
