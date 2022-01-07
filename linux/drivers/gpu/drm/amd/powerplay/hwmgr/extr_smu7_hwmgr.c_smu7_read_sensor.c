
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu7_hwmgr {int soft_regs_start; int vr_config; int vce_power_gated; int uvd_power_gated; } ;
struct pp_hwmgr {int device; scalar_t__ backend; } ;
 int AverageGraphicsActivity ;
 int AverageMemoryActivity ;
 int CGS_IND_REG__SMC ;
 int EINVAL ;
 int PHM_READ_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int PLANE1_VID ;
 int PLANE2_VID ;
 int PPSMC_MSG_API_GetMclkFrequency ;
 int PPSMC_MSG_API_GetSclkFrequency ;
 int PWR_SVI2_STATUS ;
 int SMU_SoftRegisters ;
 int cgs_read_ind_register (int ,int ,int) ;
 int cgs_read_register (int ,int ) ;
 int convert_to_vddc (int) ;
 int mmSMC_MSG_ARG_0 ;
 int smu7_get_gpu_power (struct pp_hwmgr*,int*) ;
 int smu7_thermal_get_temperature (struct pp_hwmgr*) ;
 int smum_get_offsetof (struct pp_hwmgr*,int ,int ) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_read_sensor(struct pp_hwmgr *hwmgr, int idx,
       void *value, int *size)
{
 uint32_t sclk, mclk, activity_percent;
 uint32_t offset, val_vid;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);


 if (*size < 4)
  return -EINVAL;

 switch (idx) {
 case 135:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_API_GetSclkFrequency);
  sclk = cgs_read_register(hwmgr->device, mmSMC_MSG_ARG_0);
  *((uint32_t *)value) = sclk;
  *size = 4;
  return 0;
 case 136:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_API_GetMclkFrequency);
  mclk = cgs_read_register(hwmgr->device, mmSMC_MSG_ARG_0);
  *((uint32_t *)value) = mclk;
  *size = 4;
  return 0;
 case 134:
 case 131:
  offset = data->soft_regs_start + smum_get_offsetof(hwmgr,
        SMU_SoftRegisters,
        (idx == 134) ?
        AverageGraphicsActivity:
        AverageMemoryActivity);

  activity_percent = cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC, offset);
  activity_percent += 0x80;
  activity_percent >>= 8;
  *((uint32_t *)value) = activity_percent > 100 ? 100 : activity_percent;
  *size = 4;
  return 0;
 case 132:
  *((uint32_t *)value) = smu7_thermal_get_temperature(hwmgr);
  *size = 4;
  return 0;
 case 130:
  *((uint32_t *)value) = data->uvd_power_gated ? 0 : 1;
  *size = 4;
  return 0;
 case 129:
  *((uint32_t *)value) = data->vce_power_gated ? 0 : 1;
  *size = 4;
  return 0;
 case 133:
  return smu7_get_gpu_power(hwmgr, (uint32_t *)value);
 case 128:
  if ((data->vr_config & 0xff) == 0x2)
   val_vid = PHM_READ_INDIRECT_FIELD(hwmgr->device,
     CGS_IND_REG__SMC, PWR_SVI2_STATUS, PLANE2_VID);
  else
   val_vid = PHM_READ_INDIRECT_FIELD(hwmgr->device,
     CGS_IND_REG__SMC, PWR_SVI2_STATUS, PLANE1_VID);

  *((uint32_t *)value) = (uint32_t)convert_to_vddc(val_vid);
  return 0;
 default:
  return -EINVAL;
 }
}
