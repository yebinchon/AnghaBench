
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int regmap; int hotplug_work; } ;
struct drm_device {int dev; int pdev; struct drm_psb_private* dev_private; } ;


 int INIT_WORK (int *,int ) ;
 int cdv_hotplug_enable (struct drm_device*,int) ;
 int cdv_hotplug_work_func ;
 int cdv_regmap ;
 int dev_warn (int ,char*) ;
 int gma_get_core_freq (struct drm_device*) ;
 scalar_t__ pci_enable_msi (int ) ;
 int psb_intel_init_bios (struct drm_device*) ;
 int psb_intel_opregion_init (struct drm_device*) ;

__attribute__((used)) static int cdv_chip_setup(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 INIT_WORK(&dev_priv->hotplug_work, cdv_hotplug_work_func);

 if (pci_enable_msi(dev->pdev))
  dev_warn(dev->dev, "Enabling MSI failed!\n");
 dev_priv->regmap = cdv_regmap;
 gma_get_core_freq(dev);
 psb_intel_opregion_init(dev);
 psb_intel_init_bios(dev);
 cdv_hotplug_enable(dev, 0);
 return 0;
}
