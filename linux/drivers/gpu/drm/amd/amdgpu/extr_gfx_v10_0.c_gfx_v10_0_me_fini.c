
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int me_fw_ptr; int me_fw_gpu_addr; int me_fw_obj; } ;
struct TYPE_4__ {TYPE_1__ me; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int amdgpu_bo_free_kernel (int *,int *,void**) ;

__attribute__((used)) static void gfx_v10_0_me_fini(struct amdgpu_device *adev)
{
 amdgpu_bo_free_kernel(&adev->gfx.me.me_fw_obj,
         &adev->gfx.me.me_fw_gpu_addr,
         (void **)&adev->gfx.me.me_fw_ptr);
}
