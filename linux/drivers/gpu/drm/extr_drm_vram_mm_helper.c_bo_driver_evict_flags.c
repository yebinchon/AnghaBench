
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_placement {int dummy; } ;
struct ttm_buffer_object {int bdev; } ;
struct drm_vram_mm {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* evict_flags ) (struct ttm_buffer_object*,struct ttm_placement*) ;} ;


 struct drm_vram_mm* drm_vram_mm_of_bdev (int ) ;
 int stub1 (struct ttm_buffer_object*,struct ttm_placement*) ;

__attribute__((used)) static void bo_driver_evict_flags(struct ttm_buffer_object *bo,
      struct ttm_placement *placement)
{
 struct drm_vram_mm *vmm = drm_vram_mm_of_bdev(bo->bdev);

 if (vmm->funcs && vmm->funcs->evict_flags)
  vmm->funcs->evict_flags(bo, placement);
}
