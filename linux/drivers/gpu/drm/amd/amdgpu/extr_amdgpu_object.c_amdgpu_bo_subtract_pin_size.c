
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_device {int gart_pin_size; int visible_pin_size; int vram_pin_size; } ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct TYPE_3__ {TYPE_2__ mem; int bdev; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;


 scalar_t__ TTM_PL_TT ;
 scalar_t__ TTM_PL_VRAM ;
 int amdgpu_bo_size (struct amdgpu_bo*) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_vram_mgr_bo_visible_size (struct amdgpu_bo*) ;
 int atomic64_sub (int ,int *) ;

__attribute__((used)) static void amdgpu_bo_subtract_pin_size(struct amdgpu_bo *bo)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);

 if (bo->tbo.mem.mem_type == TTM_PL_VRAM) {
  atomic64_sub(amdgpu_bo_size(bo), &adev->vram_pin_size);
  atomic64_sub(amdgpu_vram_mgr_bo_visible_size(bo),
        &adev->visible_pin_size);
 } else if (bo->tbo.mem.mem_type == TTM_PL_TT) {
  atomic64_sub(amdgpu_bo_size(bo), &adev->gart_pin_size);
 }
}
