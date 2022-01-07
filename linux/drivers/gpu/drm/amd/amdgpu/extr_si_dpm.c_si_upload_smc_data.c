
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_crtc; struct amdgpu_crtc** crtcs; } ;
struct TYPE_4__ {scalar_t__ new_active_crtc_count; int new_active_crtcs; } ;
struct TYPE_5__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_3__ mode_info; TYPE_2__ pm; } ;
struct amdgpu_crtc {int line_time; int crtc_id; int wm_high; int wm_low; } ;


 scalar_t__ PPSMC_Result_OK ;
 int SI_SMC_SOFT_REGISTER_crtc_index ;
 int SI_SMC_SOFT_REGISTER_mclk_change_block_cp_max ;
 int SI_SMC_SOFT_REGISTER_mclk_change_block_cp_min ;
 scalar_t__ si_write_smc_soft_register (struct amdgpu_device*,int ,int) ;

__attribute__((used)) static int si_upload_smc_data(struct amdgpu_device *adev)
{
 struct amdgpu_crtc *amdgpu_crtc = ((void*)0);
 int i;

 if (adev->pm.dpm.new_active_crtc_count == 0)
  return 0;

 for (i = 0; i < adev->mode_info.num_crtc; i++) {
  if (adev->pm.dpm.new_active_crtcs & (1 << i)) {
   amdgpu_crtc = adev->mode_info.crtcs[i];
   break;
  }
 }

 if (amdgpu_crtc == ((void*)0))
  return 0;

 if (amdgpu_crtc->line_time <= 0)
  return 0;

 if (si_write_smc_soft_register(adev,
           SI_SMC_SOFT_REGISTER_crtc_index,
           amdgpu_crtc->crtc_id) != PPSMC_Result_OK)
  return 0;

 if (si_write_smc_soft_register(adev,
           SI_SMC_SOFT_REGISTER_mclk_change_block_cp_min,
           amdgpu_crtc->wm_high / amdgpu_crtc->line_time) != PPSMC_Result_OK)
  return 0;

 if (si_write_smc_soft_register(adev,
           SI_SMC_SOFT_REGISTER_mclk_change_block_cp_max,
           amdgpu_crtc->wm_low / amdgpu_crtc->line_time) != PPSMC_Result_OK)
  return 0;

 return 0;
}
