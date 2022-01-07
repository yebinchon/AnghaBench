
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pci_dev {int dummy; } ;
struct drm_psb_private {int iLVDS_enable; int is_lvds_on; int is_mipi_on; int video_device_fuse; int fuse_reg_value; int core_freq; } ;
struct drm_device {int dev; TYPE_1__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int bus; } ;


 int DRM_INFO (char*,char*) ;
 int FB_MIPI_DISABLE ;
 int FB_REG06 ;
 int FB_REG09 ;



 int FB_SKU_MASK ;
 int FB_SKU_SHIFT ;
 scalar_t__ IS_MRST (struct drm_device*) ;
 int WARN_ON (int) ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (int ) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static void mid_get_fuse_settings(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct pci_dev *pci_root =
  pci_get_domain_bus_and_slot(pci_domain_nr(dev->pdev->bus),
         0, 0);
 uint32_t fuse_value = 0;
 uint32_t fuse_value_tmp = 0;
 if (pci_root == ((void*)0)) {
  WARN_ON(1);
  return;
 }


 pci_write_config_dword(pci_root, 0xD0, 0xD0810600);
 pci_read_config_dword(pci_root, 0xD4, &fuse_value);


 if (IS_MRST(dev))
  dev_priv->iLVDS_enable = fuse_value & (1 << 11);

 DRM_INFO("internal display is %s\n",
   dev_priv->iLVDS_enable ? "LVDS display" : "MIPI display");


  if (dev_priv->iLVDS_enable) {
  dev_priv->is_lvds_on = 1;
  dev_priv->is_mipi_on = 0;
 } else {
  dev_priv->is_mipi_on = 1;
  dev_priv->is_lvds_on = 0;
 }

 dev_priv->video_device_fuse = fuse_value;

 pci_write_config_dword(pci_root, 0xD0, 0xD0810900);
 pci_read_config_dword(pci_root, 0xD4, &fuse_value);

 dev_dbg(dev->dev, "SKU values is 0x%x.\n", fuse_value);
 fuse_value_tmp = (fuse_value & 0x7000) >> 12;

 dev_priv->fuse_reg_value = fuse_value;

 switch (fuse_value_tmp) {
 case 0:
  dev_priv->core_freq = 200;
  break;
 case 1:
  dev_priv->core_freq = 100;
  break;
 case 2:
  dev_priv->core_freq = 166;
  break;
 default:
  dev_warn(dev->dev, "Invalid SKU values, SKU value = 0x%08x\n",
        fuse_value_tmp);
  dev_priv->core_freq = 0;
 }
 dev_dbg(dev->dev, "LNC core clk is %dMHz.\n", dev_priv->core_freq);
 pci_dev_put(pci_root);
}
