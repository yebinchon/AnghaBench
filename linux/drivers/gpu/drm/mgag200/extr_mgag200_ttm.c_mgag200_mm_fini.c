
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_device {scalar_t__ fb_mtrr; struct drm_device* dev; } ;
struct drm_device {int pdev; } ;


 int arch_io_free_memtype_wc (int ,int ) ;
 int arch_phys_wc_del (scalar_t__) ;
 int drm_vram_helper_release_mm (struct drm_device*) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;

void mgag200_mm_fini(struct mga_device *mdev)
{
 struct drm_device *dev = mdev->dev;

 drm_vram_helper_release_mm(dev);

 arch_io_free_memtype_wc(pci_resource_start(dev->pdev, 0),
    pci_resource_len(dev->pdev, 0));
 arch_phys_wc_del(mdev->fb_mtrr);
 mdev->fb_mtrr = 0;
}
