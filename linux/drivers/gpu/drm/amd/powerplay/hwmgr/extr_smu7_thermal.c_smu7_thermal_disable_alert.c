
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int CG_THERMAL_INT ;
 int PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int PPSMC_MSG_Thermal_Cntl_Disable ;
 int SMU7_THERMAL_HIGH_ALERT_MASK ;
 int SMU7_THERMAL_LOW_ALERT_MASK ;
 int THERM_INT_MASK ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

int smu7_thermal_disable_alert(struct pp_hwmgr *hwmgr)
{
 uint32_t alert;

 alert = PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_THERMAL_INT, THERM_INT_MASK);
 alert |= (SMU7_THERMAL_HIGH_ALERT_MASK | SMU7_THERMAL_LOW_ALERT_MASK);
 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_THERMAL_INT, THERM_INT_MASK, alert);


 return smum_send_msg_to_smc(hwmgr, PPSMC_MSG_Thermal_Cntl_Disable);
}
