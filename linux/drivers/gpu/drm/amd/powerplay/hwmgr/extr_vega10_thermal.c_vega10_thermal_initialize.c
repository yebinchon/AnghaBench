
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ucTachometerPulsesPerRevolution; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_2__ thermal_controller; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int CG_FDO_CTRL2 ;
 int CG_TACH_CTRL ;
 int EDGE_PER_REV ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int TACH_PWM_RESP_RATE ;
 int THM ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmCG_FDO_CTRL2 ;
 int mmCG_TACH_CTRL ;

__attribute__((used)) static int vega10_thermal_initialize(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;

 if (hwmgr->thermal_controller.fanInfo.ucTachometerPulsesPerRevolution) {
  WREG32_SOC15(THM, 0, mmCG_TACH_CTRL,
   REG_SET_FIELD(RREG32_SOC15(THM, 0, mmCG_TACH_CTRL),
    CG_TACH_CTRL, EDGE_PER_REV,
    hwmgr->thermal_controller.fanInfo.ucTachometerPulsesPerRevolution - 1));
 }

 WREG32_SOC15(THM, 0, mmCG_FDO_CTRL2,
  REG_SET_FIELD(RREG32_SOC15(THM, 0, mmCG_FDO_CTRL2),
   CG_FDO_CTRL2, TACH_PWM_RESP_RATE, 0x28));

 return 0;
}
