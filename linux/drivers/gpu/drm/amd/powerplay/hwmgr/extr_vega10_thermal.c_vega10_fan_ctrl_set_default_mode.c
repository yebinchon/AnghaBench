
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int fan_ctrl_is_in_default_mode; int fan_ctrl_default_mode; int tmin; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int CG_FDO_CTRL2 ;
 int CG_FDO_CTRL2__TMIN__SHIFT ;
 int FDO_PWM_MODE ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int THM ;
 int TMIN ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmCG_FDO_CTRL2 ;

int vega10_fan_ctrl_set_default_mode(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;

 if (!hwmgr->fan_ctrl_is_in_default_mode) {
  WREG32_SOC15(THM, 0, mmCG_FDO_CTRL2,
   REG_SET_FIELD(RREG32_SOC15(THM, 0, mmCG_FDO_CTRL2),
    CG_FDO_CTRL2, FDO_PWM_MODE,
    hwmgr->fan_ctrl_default_mode));
  WREG32_SOC15(THM, 0, mmCG_FDO_CTRL2,
   REG_SET_FIELD(RREG32_SOC15(THM, 0, mmCG_FDO_CTRL2),
    CG_FDO_CTRL2, TMIN,
    hwmgr->tmin << CG_FDO_CTRL2__TMIN__SHIFT));
  hwmgr->fan_ctrl_is_in_default_mode = 1;
 }

 return 0;
}
