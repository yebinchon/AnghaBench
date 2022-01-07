
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ttm_mem_type_manager {unsigned long size; } ;
struct TYPE_3__ {struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {TYPE_1__ bdev; } ;
struct amdgpu_device {TYPE_2__ mman; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 int DRM_DEBUG (char*,unsigned long,unsigned long) ;
 unsigned long PAGE_SHIFT ;
 size_t TTM_PL_TT ;
 size_t TTM_PL_VRAM ;

__attribute__((used)) static bool amdgpu_bo_validate_size(struct amdgpu_device *adev,
       unsigned long size, u32 domain)
{
 struct ttm_mem_type_manager *man = ((void*)0);





 if (domain & AMDGPU_GEM_DOMAIN_GTT) {
  man = &adev->mman.bdev.man[TTM_PL_TT];

  if (size < (man->size << PAGE_SHIFT))
   return 1;
  else
   goto fail;
 }

 if (domain & AMDGPU_GEM_DOMAIN_VRAM) {
  man = &adev->mman.bdev.man[TTM_PL_VRAM];

  if (size < (man->size << PAGE_SHIFT))
   return 1;
  else
   goto fail;
 }



 return 1;

fail:
 DRM_DEBUG("BO size %lu > total memory in domain: %llu\n", size,
    man->size << PAGE_SHIFT);
 return 0;
}
