
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_4__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct amdgpu_device {TYPE_2__ mman; } ;
struct TYPE_3__ {int bdev; } ;
struct amdgpu_bo {struct amdgpu_bo* parent; TYPE_1__ tbo; } ;


 int amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_bo_size (struct amdgpu_bo*) ;
 int amdgpu_copy_buffer (struct amdgpu_ring*,int ,int ,int ,int *,struct dma_fence**,int,int) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;

int amdgpu_bo_restore_shadow(struct amdgpu_bo *shadow, struct dma_fence **fence)

{
 struct amdgpu_device *adev = amdgpu_ttm_adev(shadow->tbo.bdev);
 struct amdgpu_ring *ring = adev->mman.buffer_funcs_ring;
 uint64_t shadow_addr, parent_addr;

 shadow_addr = amdgpu_bo_gpu_offset(shadow);
 parent_addr = amdgpu_bo_gpu_offset(shadow->parent);

 return amdgpu_copy_buffer(ring, shadow_addr, parent_addr,
      amdgpu_bo_size(shadow), ((void*)0), fence,
      1, 0);
}
