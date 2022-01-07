
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct ttm_mem_type_manager {scalar_t__ size; } ;
struct TYPE_6__ {int gtt_size; int visible_vram_size; } ;
struct TYPE_4__ {struct ttm_mem_type_manager* man; } ;
struct TYPE_5__ {TYPE_1__ bdev; } ;
struct radeon_device {scalar_t__ gart_pin_size; TYPE_3__ mc; scalar_t__ vram_pin_size; TYPE_2__ mman; } ;
struct drm_radeon_gem_info {int vram_size; int gart_size; int vram_visible; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int PAGE_SHIFT ;
 size_t TTM_PL_VRAM ;

int radeon_gem_info_ioctl(struct drm_device *dev, void *data,
     struct drm_file *filp)
{
 struct radeon_device *rdev = dev->dev_private;
 struct drm_radeon_gem_info *args = data;
 struct ttm_mem_type_manager *man;

 man = &rdev->mman.bdev.man[TTM_PL_VRAM];

 args->vram_size = (u64)man->size << PAGE_SHIFT;
 args->vram_visible = rdev->mc.visible_vram_size;
 args->vram_visible -= rdev->vram_pin_size;
 args->gart_size = rdev->mc.gtt_size;
 args->gart_size -= rdev->gart_pin_size;

 return 0;
}
