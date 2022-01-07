
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_atomic_helper_shutdown (struct drm_device*) ;
 struct drm_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void rockchip_drm_platform_shutdown(struct platform_device *pdev)
{
 struct drm_device *drm = platform_get_drvdata(pdev);

 if (drm)
  drm_atomic_helper_shutdown(drm);
}
