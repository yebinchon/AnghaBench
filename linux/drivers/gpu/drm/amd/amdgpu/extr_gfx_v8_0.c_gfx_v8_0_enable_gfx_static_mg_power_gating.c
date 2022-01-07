
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_2__ powerplay; } ;
struct TYPE_3__ {scalar_t__ set_powergating_by_smu; } ;


 int AMD_IP_BLOCK_TYPE_GFX ;
 scalar_t__ CHIP_POLARIS11 ;
 scalar_t__ CHIP_POLARIS12 ;
 scalar_t__ CHIP_VEGAM ;
 int RLC_PG_CNTL ;
 int STATIC_PER_CU_PG_ENABLE ;
 int WREG32_FIELD (int ,int ,int) ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;

__attribute__((used)) static void gfx_v8_0_enable_gfx_static_mg_power_gating(struct amdgpu_device *adev,
             bool enable)
{
 if (((adev->asic_type == CHIP_POLARIS11) ||
     (adev->asic_type == CHIP_POLARIS12) ||
     (adev->asic_type == CHIP_VEGAM)) &&
     adev->powerplay.pp_funcs->set_powergating_by_smu)

  amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_GFX, enable);

 WREG32_FIELD(RLC_PG_CNTL, STATIC_PER_CU_PG_ENABLE, enable ? 1 : 0);
}
