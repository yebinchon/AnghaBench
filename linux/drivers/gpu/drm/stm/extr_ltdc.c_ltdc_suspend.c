
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {int pixel_clk; } ;
struct drm_device {struct ltdc_device* dev_private; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int clk_disable_unprepare (int ) ;

void ltdc_suspend(struct drm_device *ddev)
{
 struct ltdc_device *ldev = ddev->dev_private;

 DRM_DEBUG_DRIVER("\n");
 clk_disable_unprepare(ldev->pixel_clk);
}
