
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; int gpu_addr; int robj; } ;
struct amdgpu_device {TYPE_1__ vram_scratch; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int AMDGPU_GPU_PAGE_SIZE ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int ,int ,int ,int *,int *,void**) ;

__attribute__((used)) static int amdgpu_device_vram_scratch_init(struct amdgpu_device *adev)
{
 return amdgpu_bo_create_kernel(adev, AMDGPU_GPU_PAGE_SIZE,
           PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM,
           &adev->vram_scratch.robj,
           &adev->vram_scratch.gpu_addr,
           (void **)&adev->vram_scratch.ptr);
}
