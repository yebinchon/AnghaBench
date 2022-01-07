
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ load_type; } ;
struct amdgpu_device {int smu; TYPE_1__ firmware; } ;


 scalar_t__ AMDGPU_FW_LOAD_DIRECT ;
 int amdgpu_emu_mode ;
 int gfx_v10_0_check_grbm_cam_remapping (struct amdgpu_device*) ;
 int gfx_v10_0_constants_init (struct amdgpu_device*) ;
 int gfx_v10_0_cp_resume (struct amdgpu_device*) ;
 int gfx_v10_0_csb_vram_pin (struct amdgpu_device*) ;
 int gfx_v10_0_init_golden_registers (struct amdgpu_device*) ;
 int gfx_v10_0_rlc_resume (struct amdgpu_device*) ;
 int gfx_v10_0_setup_grbm_cam_remapping (struct amdgpu_device*) ;
 int gfx_v10_0_tcp_harvest (struct amdgpu_device*) ;
 int pr_err (char*) ;
 int smu_check_fw_status (int *) ;
 int smu_load_microcode (int *) ;

__attribute__((used)) static int gfx_v10_0_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = gfx_v10_0_csb_vram_pin(adev);
 if (r)
  return r;

 if (!amdgpu_emu_mode)
  gfx_v10_0_init_golden_registers(adev);

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT) {





  r = smu_load_microcode(&adev->smu);
  if (r)
   return r;

  r = smu_check_fw_status(&adev->smu);
  if (r) {
   pr_err("SMC firmware status is not correct\n");
   return r;
  }
 }


 if (!gfx_v10_0_check_grbm_cam_remapping(adev))
  gfx_v10_0_setup_grbm_cam_remapping(adev);

 gfx_v10_0_constants_init(adev);

 r = gfx_v10_0_rlc_resume(adev);
 if (r)
  return r;





 gfx_v10_0_tcp_harvest(adev);

 r = gfx_v10_0_cp_resume(adev);
 if (r)
  return r;

 return r;
}
