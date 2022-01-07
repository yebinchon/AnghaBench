
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int GENERAL_PWRMGT ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int VOLT_PWRMGT_EN ;

__attribute__((used)) static int smu7_enable_voltage_control(struct pp_hwmgr *hwmgr)
{

 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   GENERAL_PWRMGT, VOLT_PWRMGT_EN, 1);

 return 0;
}
