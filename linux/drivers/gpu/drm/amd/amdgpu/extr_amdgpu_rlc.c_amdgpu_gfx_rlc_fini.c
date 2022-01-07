
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cp_table_ptr; int cp_table_gpu_addr; scalar_t__ cp_table_obj; int cs_ptr; int clear_state_gpu_addr; scalar_t__ clear_state_obj; int sr_ptr; int save_restore_gpu_addr; scalar_t__ save_restore_obj; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int amdgpu_bo_free_kernel (scalar_t__*,int *,void**) ;

void amdgpu_gfx_rlc_fini(struct amdgpu_device *adev)
{

 if (adev->gfx.rlc.save_restore_obj) {
  amdgpu_bo_free_kernel(&adev->gfx.rlc.save_restore_obj,
          &adev->gfx.rlc.save_restore_gpu_addr,
          (void **)&adev->gfx.rlc.sr_ptr);
 }


 amdgpu_bo_free_kernel(&adev->gfx.rlc.clear_state_obj,
         &adev->gfx.rlc.clear_state_gpu_addr,
         (void **)&adev->gfx.rlc.cs_ptr);


 amdgpu_bo_free_kernel(&adev->gfx.rlc.cp_table_obj,
         &adev->gfx.rlc.cp_table_gpu_addr,
         (void **)&adev->gfx.rlc.cp_table_ptr);
}
