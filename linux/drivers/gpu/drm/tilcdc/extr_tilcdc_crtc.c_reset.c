
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_drm_private {int rev; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int LCDC_CLK_MAIN_RESET ;
 int LCDC_CLK_RESET_REG ;
 int tilcdc_clear (struct drm_device*,int ,int ) ;
 int tilcdc_set (struct drm_device*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void reset(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct tilcdc_drm_private *priv = dev->dev_private;

 if (priv->rev != 2)
  return;

 tilcdc_set(dev, LCDC_CLK_RESET_REG, LCDC_CLK_MAIN_RESET);
 usleep_range(250, 1000);
 tilcdc_clear(dev, LCDC_CLK_RESET_REG, LCDC_CLK_MAIN_RESET);
}
