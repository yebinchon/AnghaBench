
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {int pixel_clk; } ;
struct drm_device {struct ltdc_device* dev_private; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*,int) ;
 int clk_prepare_enable (int ) ;

int ltdc_resume(struct drm_device *ddev)
{
 struct ltdc_device *ldev = ddev->dev_private;
 int ret;

 DRM_DEBUG_DRIVER("\n");

 ret = clk_prepare_enable(ldev->pixel_clk);
 if (ret) {
  DRM_ERROR("failed to enable pixel clock (%d)\n", ret);
  return ret;
 }

 return 0;
}
