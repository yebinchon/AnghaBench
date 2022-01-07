
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_drm_private {int crtc; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;
typedef int irqreturn_t ;


 int tilcdc_crtc_irq (int ) ;

__attribute__((used)) static irqreturn_t tilcdc_irq(int irq, void *arg)
{
 struct drm_device *dev = arg;
 struct tilcdc_drm_private *priv = dev->dev_private;
 return tilcdc_crtc_irq(priv->crtc);
}
