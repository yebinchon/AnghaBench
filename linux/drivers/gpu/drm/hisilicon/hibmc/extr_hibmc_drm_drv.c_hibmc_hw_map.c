
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hibmc_drm_private {void* fb_size; void* fb_base; int fb_map; int mmio; struct drm_device* dev; } ;
struct drm_device {int dev; struct pci_dev* pdev; } ;
typedef void* resource_size_t ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int devm_ioremap (int ,void*,void*) ;
 int devm_ioremap_nocache (int ,void*,void*) ;
 void* pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static int hibmc_hw_map(struct hibmc_drm_private *priv)
{
 struct drm_device *dev = priv->dev;
 struct pci_dev *pdev = dev->pdev;
 resource_size_t addr, size, ioaddr, iosize;

 ioaddr = pci_resource_start(pdev, 1);
 iosize = pci_resource_len(pdev, 1);
 priv->mmio = devm_ioremap_nocache(dev->dev, ioaddr, iosize);
 if (!priv->mmio) {
  DRM_ERROR("Cannot map mmio region\n");
  return -ENOMEM;
 }

 addr = pci_resource_start(pdev, 0);
 size = pci_resource_len(pdev, 0);
 priv->fb_map = devm_ioremap(dev->dev, addr, size);
 if (!priv->fb_map) {
  DRM_ERROR("Cannot map framebuffer\n");
  return -ENOMEM;
 }
 priv->fb_base = addr;
 priv->fb_size = size;

 return 0;
}
