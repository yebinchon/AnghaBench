
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vram_mm {int dummy; } ;
struct bochs_device {int fb_size; int fb_base; int dev; } ;


 int PTR_ERR_OR_ZERO (struct drm_vram_mm*) ;
 int drm_gem_vram_mm_funcs ;
 struct drm_vram_mm* drm_vram_helper_alloc_mm (int ,int ,int ,int *) ;

int bochs_mm_init(struct bochs_device *bochs)
{
 struct drm_vram_mm *vmm;

 vmm = drm_vram_helper_alloc_mm(bochs->dev, bochs->fb_base,
           bochs->fb_size,
           &drm_gem_vram_mm_funcs);
 return PTR_ERR_OR_ZERO(vmm);
}
