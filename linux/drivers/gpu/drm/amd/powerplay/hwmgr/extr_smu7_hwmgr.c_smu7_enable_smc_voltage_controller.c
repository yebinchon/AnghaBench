
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {scalar_t__ chip_id; int feature_mask; int device; } ;


 int CGS_IND_REG__SMC ;
 scalar_t__ CHIP_VEGAM ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int ) ;
 int PPSMC_MSG_Voltage_Cntl_Enable ;
 int PP_SMC_VOLTAGE_CONTROL_MASK ;
 int PSI0_EN ;
 int PSI1 ;
 int PWR_SVI2_PLANE1_LOAD ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_enable_smc_voltage_controller(struct pp_hwmgr *hwmgr)
{
 if (hwmgr->chip_id == CHIP_VEGAM) {
  PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device,
    CGS_IND_REG__SMC, PWR_SVI2_PLANE1_LOAD, PSI1, 0);
  PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device,
    CGS_IND_REG__SMC, PWR_SVI2_PLANE1_LOAD, PSI0_EN, 0);
 }

 if (hwmgr->feature_mask & PP_SMC_VOLTAGE_CONTROL_MASK)
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_Voltage_Cntl_Enable);

 return 0;
}
