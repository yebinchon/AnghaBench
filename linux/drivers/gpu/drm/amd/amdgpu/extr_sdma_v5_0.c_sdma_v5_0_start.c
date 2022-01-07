
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_2__* pdev; TYPE_1__ firmware; } ;
struct TYPE_4__ {int device; } ;


 scalar_t__ AMDGPU_FW_LOAD_DIRECT ;
 int amdgpu_emu_mode ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int msleep (int) ;
 int sdma_v5_0_ctx_switch_enable (struct amdgpu_device*,int) ;
 int sdma_v5_0_enable (struct amdgpu_device*,int) ;
 int sdma_v5_0_gfx_resume (struct amdgpu_device*) ;
 int sdma_v5_0_load_microcode (struct amdgpu_device*) ;
 int sdma_v5_0_rlc_resume (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v5_0_start(struct amdgpu_device *adev)
{
 int r = 0;

 if (amdgpu_sriov_vf(adev)) {
  sdma_v5_0_ctx_switch_enable(adev, 0);
  sdma_v5_0_enable(adev, 0);


  r = sdma_v5_0_gfx_resume(adev);
  return r;
 }

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT) {
  r = sdma_v5_0_load_microcode(adev);
  if (r)
   return r;


  if (amdgpu_emu_mode == 1 && adev->pdev->device == 0x4d)
   msleep(1000);
 }


 sdma_v5_0_enable(adev, 1);

 sdma_v5_0_ctx_switch_enable(adev, 1);


 r = sdma_v5_0_gfx_resume(adev);
 if (r)
  return r;
 r = sdma_v5_0_rlc_resume(adev);

 return r;
}
