
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int robj; } ;
struct amdgpu_device {TYPE_1__ vram_scratch; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;

__attribute__((used)) static void amdgpu_device_vram_scratch_fini(struct amdgpu_device *adev)
{
 amdgpu_bo_free_kernel(&adev->vram_scratch.robj, ((void*)0), ((void*)0));
}
