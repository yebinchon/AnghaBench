
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int mode_dev; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int SDVOB ;
 int psb_intel_lvds_init (struct drm_device*,int *) ;
 int psb_intel_sdvo_init (struct drm_device*,int ) ;

__attribute__((used)) static int psb_output_init(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 psb_intel_lvds_init(dev, &dev_priv->mode_dev);
 psb_intel_sdvo_init(dev, SDVOB);
 return 0;
}
