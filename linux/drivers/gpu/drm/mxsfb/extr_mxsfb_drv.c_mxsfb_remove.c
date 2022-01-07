
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int mxsfb_unload (struct drm_device*) ;
 struct drm_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mxsfb_remove(struct platform_device *pdev)
{
 struct drm_device *drm = platform_get_drvdata(pdev);

 drm_dev_unregister(drm);
 mxsfb_unload(drm);
 drm_dev_put(drm);

 return 0;
}
