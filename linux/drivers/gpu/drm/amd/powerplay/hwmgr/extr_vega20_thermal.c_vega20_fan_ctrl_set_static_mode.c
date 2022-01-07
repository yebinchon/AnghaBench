
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int CG_FDO_CTRL2 ;
 int FDO_PWM_MODE ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int THM ;
 int TMIN ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmCG_FDO_CTRL2 ;

__attribute__((used)) static int vega20_fan_ctrl_set_static_mode(struct pp_hwmgr *hwmgr, uint32_t mode)
{
 struct amdgpu_device *adev = hwmgr->adev;

 WREG32_SOC15(THM, 0, mmCG_FDO_CTRL2,
   REG_SET_FIELD(RREG32_SOC15(THM, 0, mmCG_FDO_CTRL2),
    CG_FDO_CTRL2, TMIN, 0));
 WREG32_SOC15(THM, 0, mmCG_FDO_CTRL2,
   REG_SET_FIELD(RREG32_SOC15(THM, 0, mmCG_FDO_CTRL2),
    CG_FDO_CTRL2, FDO_PWM_MODE, mode));

 return 0;
}
