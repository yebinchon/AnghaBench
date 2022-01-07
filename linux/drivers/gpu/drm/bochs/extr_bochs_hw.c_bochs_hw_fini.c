
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int pdev; struct bochs_device* dev_private; } ;
struct bochs_device {int edid; scalar_t__ fb_map; scalar_t__ ioports; scalar_t__ mmio; } ;


 int VBE_DISPI_IOPORT_INDEX ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 int pci_release_regions (int ) ;
 int release_region (int ,int) ;

void bochs_hw_fini(struct drm_device *dev)
{
 struct bochs_device *bochs = dev->dev_private;

 if (bochs->mmio)
  iounmap(bochs->mmio);
 if (bochs->ioports)
  release_region(VBE_DISPI_IOPORT_INDEX, 2);
 if (bochs->fb_map)
  iounmap(bochs->fb_map);
 pci_release_regions(dev->pdev);
 kfree(bochs->edid);
}
