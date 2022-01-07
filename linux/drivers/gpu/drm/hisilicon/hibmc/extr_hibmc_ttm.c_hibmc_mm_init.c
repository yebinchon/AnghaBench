
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {int fb_size; struct drm_device* dev; } ;
struct drm_vram_mm {int dummy; } ;
struct drm_device {int pdev; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ IS_ERR (struct drm_vram_mm*) ;
 int PTR_ERR (struct drm_vram_mm*) ;
 int drm_gem_vram_mm_funcs ;
 struct drm_vram_mm* drm_vram_helper_alloc_mm (struct drm_device*,int ,int ,int *) ;
 int pci_resource_start (int ,int ) ;

int hibmc_mm_init(struct hibmc_drm_private *hibmc)
{
 struct drm_vram_mm *vmm;
 int ret;
 struct drm_device *dev = hibmc->dev;

 vmm = drm_vram_helper_alloc_mm(dev,
           pci_resource_start(dev->pdev, 0),
           hibmc->fb_size, &drm_gem_vram_mm_funcs);
 if (IS_ERR(vmm)) {
  ret = PTR_ERR(vmm);
  DRM_ERROR("Error initializing VRAM MM; %d\n", ret);
  return ret;
 }

 return 0;
}
