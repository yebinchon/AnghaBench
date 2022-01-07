
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vram_size; } ;
struct mga_device {int fb_mtrr; TYPE_1__ mc; struct drm_device* dev; } ;
struct drm_vram_mm {int dummy; } ;
struct drm_device {int pdev; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ IS_ERR (struct drm_vram_mm*) ;
 int PTR_ERR (struct drm_vram_mm*) ;
 int arch_io_reserve_memtype_wc (int ,int ) ;
 int arch_phys_wc_add (int ,int ) ;
 int drm_gem_vram_mm_funcs ;
 struct drm_vram_mm* drm_vram_helper_alloc_mm (struct drm_device*,int ,int ,int *) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;

int mgag200_mm_init(struct mga_device *mdev)
{
 struct drm_vram_mm *vmm;
 int ret;
 struct drm_device *dev = mdev->dev;

 vmm = drm_vram_helper_alloc_mm(dev, pci_resource_start(dev->pdev, 0),
           mdev->mc.vram_size,
           &drm_gem_vram_mm_funcs);
 if (IS_ERR(vmm)) {
  ret = PTR_ERR(vmm);
  DRM_ERROR("Error initializing VRAM MM; %d\n", ret);
  return ret;
 }

 arch_io_reserve_memtype_wc(pci_resource_start(dev->pdev, 0),
       pci_resource_len(dev->pdev, 0));

 mdev->fb_mtrr = arch_phys_wc_add(pci_resource_start(dev->pdev, 0),
      pci_resource_len(dev->pdev, 0));

 return 0;
}
