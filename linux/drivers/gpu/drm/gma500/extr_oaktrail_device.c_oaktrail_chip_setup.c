
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int has_gct; int regmap; } ;
struct drm_device {int dev; int pdev; struct drm_psb_private* dev_private; } ;


 int dev_warn (int ,char*) ;
 int gma_intel_setup_gmbus (struct drm_device*) ;
 int mid_chip_setup (struct drm_device*) ;
 int oaktrail_hdmi_setup (struct drm_device*) ;
 int oaktrail_regmap ;
 scalar_t__ pci_enable_msi (int ) ;
 int psb_intel_init_bios (struct drm_device*) ;
 int psb_intel_opregion_init (struct drm_device*) ;

__attribute__((used)) static int oaktrail_chip_setup(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 int ret;

 if (pci_enable_msi(dev->pdev))
  dev_warn(dev->dev, "Enabling MSI failed!\n");

 dev_priv->regmap = oaktrail_regmap;

 ret = mid_chip_setup(dev);
 if (ret < 0)
  return ret;
 if (!dev_priv->has_gct) {

  psb_intel_opregion_init(dev);
  psb_intel_init_bios(dev);
 }
 gma_intel_setup_gmbus(dev);
 oaktrail_hdmi_setup(dev);
 return 0;
}
