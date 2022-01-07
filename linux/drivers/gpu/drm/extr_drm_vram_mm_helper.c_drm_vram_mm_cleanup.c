
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vram_mm {int bdev; } ;


 int ttm_bo_device_release (int *) ;

void drm_vram_mm_cleanup(struct drm_vram_mm *vmm)
{
 ttm_bo_device_release(&vmm->bdev);
}
