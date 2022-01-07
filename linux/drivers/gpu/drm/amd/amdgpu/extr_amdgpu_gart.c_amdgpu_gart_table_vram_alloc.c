
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bo; int table_size; } ;
struct amdgpu_device {TYPE_1__ gart; } ;
struct amdgpu_bo_param {int flags; int * resv; int type; int domain; int byte_align; int size; } ;
typedef int bp ;


 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ;
 int AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 int PAGE_SIZE ;
 int amdgpu_bo_create (struct amdgpu_device*,struct amdgpu_bo_param*,int **) ;
 int memset (struct amdgpu_bo_param*,int ,int) ;
 int ttm_bo_type_kernel ;

int amdgpu_gart_table_vram_alloc(struct amdgpu_device *adev)
{
 int r;

 if (adev->gart.bo == ((void*)0)) {
  struct amdgpu_bo_param bp;

  memset(&bp, 0, sizeof(bp));
  bp.size = adev->gart.table_size;
  bp.byte_align = PAGE_SIZE;
  bp.domain = AMDGPU_GEM_DOMAIN_VRAM;
  bp.flags = AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED |
   AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS;
  bp.type = ttm_bo_type_kernel;
  bp.resv = ((void*)0);
  r = amdgpu_bo_create(adev, &bp, &adev->gart.bo);
  if (r) {
   return r;
  }
 }
 return 0;
}
