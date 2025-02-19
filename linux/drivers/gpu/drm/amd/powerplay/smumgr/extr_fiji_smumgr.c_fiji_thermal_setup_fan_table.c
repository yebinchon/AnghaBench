
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {int platformCaps; } ;
struct TYPE_9__ {int usPWMMin; int usTMed; int usTMin; int usTHigh; int usPWMMed; int usPWMHigh; int usTMax; int ucTHyst; int ulCycleDelay; scalar_t__ ulMinFanSCLKAcousticLimit; scalar_t__ ucMinimumPWMLimit; } ;
struct TYPE_7__ {scalar_t__ bNoFan; } ;
struct TYPE_10__ {TYPE_3__ advanceFanControlParameters; TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_5__ platform_descriptor; TYPE_4__ thermal_controller; int device; scalar_t__ adev; scalar_t__ smu_backend; } ;
struct TYPE_8__ {scalar_t__ fan_table_start; } ;
struct fiji_smumgr {TYPE_2__ smu7_data; } ;
struct amdgpu_device {int dummy; } ;
typedef int fan_table ;
struct TYPE_12__ {scalar_t__ TempSrc; void* FdoMax; int RefreshPeriod; void* TempRespLim; void* HystSlope; void* HystUp; void* HystDown; void* FdoMin; void* Slope2; void* Slope1; void* TempMax; void* TempMed; void* TempMin; int member_0; } ;
typedef TYPE_6__ SMU73_Discrete_FanTable ;


 int CGS_IND_REG__SMC ;
 int CG_FDO_CTRL1 ;
 int CG_MULT_THERMAL_CTRL ;
 int FDO_MODE_HARDWARE ;
 int FMAX_DUTY100 ;
 int PHM_PlatformCaps_MicrocodeFanControl ;
 int PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int PPSMC_MSG_SetFanMinPwm ;
 int PPSMC_MSG_SetFanSclkTarget ;
 int SMC_RAM_END ;
 int TEMP_SEL ;
 int amdgpu_asic_get_xclk (struct amdgpu_device*) ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 int do_div (int,int) ;
 int phm_cap_unset (int ,int ) ;
 int smu7_copy_bytes_to_smc (struct pp_hwmgr*,scalar_t__,scalar_t__*,int,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,scalar_t__) ;

__attribute__((used)) static int fiji_thermal_setup_fan_table(struct pp_hwmgr *hwmgr)
{
 struct fiji_smumgr *smu_data = (struct fiji_smumgr *)(hwmgr->smu_backend);

 SMU73_Discrete_FanTable fan_table = { FDO_MODE_HARDWARE };
 uint32_t duty100;
 uint32_t t_diff1, t_diff2, pwm_diff1, pwm_diff2;
 uint16_t fdo_min, slope1, slope2;
 uint32_t reference_clock;
 int res;
 uint64_t tmp64;

 if (hwmgr->thermal_controller.fanInfo.bNoFan) {
  phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_MicrocodeFanControl);
  return 0;
 }

 if (smu_data->smu7_data.fan_table_start == 0) {
  phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
    PHM_PlatformCaps_MicrocodeFanControl);
  return 0;
 }

 duty100 = PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_FDO_CTRL1, FMAX_DUTY100);

 if (duty100 == 0) {
  phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
    PHM_PlatformCaps_MicrocodeFanControl);
  return 0;
 }

 tmp64 = hwmgr->thermal_controller.advanceFanControlParameters.
   usPWMMin * duty100;
 do_div(tmp64, 10000);
 fdo_min = (uint16_t)tmp64;

 t_diff1 = hwmgr->thermal_controller.advanceFanControlParameters.usTMed -
   hwmgr->thermal_controller.advanceFanControlParameters.usTMin;
 t_diff2 = hwmgr->thermal_controller.advanceFanControlParameters.usTHigh -
   hwmgr->thermal_controller.advanceFanControlParameters.usTMed;

 pwm_diff1 = hwmgr->thermal_controller.advanceFanControlParameters.usPWMMed -
   hwmgr->thermal_controller.advanceFanControlParameters.usPWMMin;
 pwm_diff2 = hwmgr->thermal_controller.advanceFanControlParameters.usPWMHigh -
   hwmgr->thermal_controller.advanceFanControlParameters.usPWMMed;

 slope1 = (uint16_t)((50 + ((16 * duty100 * pwm_diff1) / t_diff1)) / 100);
 slope2 = (uint16_t)((50 + ((16 * duty100 * pwm_diff2) / t_diff2)) / 100);

 fan_table.TempMin = cpu_to_be16((50 + hwmgr->
   thermal_controller.advanceFanControlParameters.usTMin) / 100);
 fan_table.TempMed = cpu_to_be16((50 + hwmgr->
   thermal_controller.advanceFanControlParameters.usTMed) / 100);
 fan_table.TempMax = cpu_to_be16((50 + hwmgr->
   thermal_controller.advanceFanControlParameters.usTMax) / 100);

 fan_table.Slope1 = cpu_to_be16(slope1);
 fan_table.Slope2 = cpu_to_be16(slope2);

 fan_table.FdoMin = cpu_to_be16(fdo_min);

 fan_table.HystDown = cpu_to_be16(hwmgr->
   thermal_controller.advanceFanControlParameters.ucTHyst);

 fan_table.HystUp = cpu_to_be16(1);

 fan_table.HystSlope = cpu_to_be16(1);

 fan_table.TempRespLim = cpu_to_be16(5);

 reference_clock = amdgpu_asic_get_xclk((struct amdgpu_device *)hwmgr->adev);

 fan_table.RefreshPeriod = cpu_to_be32((hwmgr->
   thermal_controller.advanceFanControlParameters.ulCycleDelay *
   reference_clock) / 1600);

 fan_table.FdoMax = cpu_to_be16((uint16_t)duty100);

 fan_table.TempSrc = (uint8_t)PHM_READ_VFPF_INDIRECT_FIELD(
   hwmgr->device, CGS_IND_REG__SMC,
   CG_MULT_THERMAL_CTRL, TEMP_SEL);

 res = smu7_copy_bytes_to_smc(hwmgr, smu_data->smu7_data.fan_table_start,
   (uint8_t *)&fan_table, (uint32_t)sizeof(fan_table),
   SMC_RAM_END);

 if (!res && hwmgr->thermal_controller.
   advanceFanControlParameters.ucMinimumPWMLimit)
  res = smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetFanMinPwm,
    hwmgr->thermal_controller.
    advanceFanControlParameters.ucMinimumPWMLimit);

 if (!res && hwmgr->thermal_controller.
   advanceFanControlParameters.ulMinFanSCLKAcousticLimit)
  res = smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetFanSclkTarget,
    hwmgr->thermal_controller.
    advanceFanControlParameters.ulMinFanSCLKAcousticLimit);

 if (res)
  phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
    PHM_PlatformCaps_MicrocodeFanControl);

 return 0;
}
