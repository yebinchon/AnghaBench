
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int mid_get_fuse_settings (struct drm_device*) ;
 int mid_get_pci_revID (struct drm_psb_private*) ;
 int mid_get_vbt_data (struct drm_psb_private*) ;

int mid_chip_setup(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 mid_get_fuse_settings(dev);
 mid_get_vbt_data(dev_priv);
 mid_get_pci_revID(dev_priv);
 return 0;
}
