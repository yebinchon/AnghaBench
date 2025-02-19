
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_drm_private {int rev; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;



int tilcdc_crtc_max_width(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct tilcdc_drm_private *priv = dev->dev_private;
 int max_width = 0;

 if (priv->rev == 1)
  max_width = 1024;
 else if (priv->rev == 2)
  max_width = 2048;

 return max_width;
}
