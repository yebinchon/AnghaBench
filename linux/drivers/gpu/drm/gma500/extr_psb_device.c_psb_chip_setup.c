
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int gma_get_core_freq (struct drm_device*) ;
 int gma_intel_setup_gmbus (struct drm_device*) ;
 int psb_intel_init_bios (struct drm_device*) ;
 int psb_intel_opregion_init (struct drm_device*) ;
 int psb_regmap ;

__attribute__((used)) static int psb_chip_setup(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 dev_priv->regmap = psb_regmap;
 gma_get_core_freq(dev);
 gma_intel_setup_gmbus(dev);
 psb_intel_opregion_init(dev);
 psb_intel_init_bios(dev);
 return 0;
}
