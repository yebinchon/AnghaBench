
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int regmap; } ;
struct drm_device {int dev; int pdev; struct drm_psb_private* dev_private; } ;


 int dev_warn (int ,char*) ;
 int mdfld_regmap ;
 int mid_chip_setup (struct drm_device*) ;
 scalar_t__ pci_enable_msi (int ) ;

__attribute__((used)) static int mdfld_chip_setup(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 if (pci_enable_msi(dev->pdev))
  dev_warn(dev->dev, "Enabling MSI failed!\n");
 dev_priv->regmap = mdfld_regmap;
 return mid_chip_setup(dev);
}
