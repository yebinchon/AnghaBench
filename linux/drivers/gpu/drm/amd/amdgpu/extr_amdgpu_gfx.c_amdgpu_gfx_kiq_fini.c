
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_kiq {int eop_gpu_addr; int eop_obj; } ;
struct TYPE_2__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;

void amdgpu_gfx_kiq_fini(struct amdgpu_device *adev)
{
 struct amdgpu_kiq *kiq = &adev->gfx.kiq;

 amdgpu_bo_free_kernel(&kiq->eop_obj, &kiq->eop_gpu_addr, ((void*)0));
}
