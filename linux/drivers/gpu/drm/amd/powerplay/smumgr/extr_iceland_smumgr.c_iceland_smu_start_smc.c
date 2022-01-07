
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int FIRMWARE_FLAGS ;
 int INTERRUPTS_ENABLED ;
 int PHM_WAIT_INDIRECT_FIELD (struct pp_hwmgr*,int ,int ,int ,int) ;
 int SMC_IND ;
 int iceland_start_smc (struct pp_hwmgr*) ;
 int iceland_start_smc_clock (struct pp_hwmgr*) ;
 int smu7_program_jump_on_start (struct pp_hwmgr*) ;

__attribute__((used)) static int iceland_smu_start_smc(struct pp_hwmgr *hwmgr)
{

 smu7_program_jump_on_start(hwmgr);


 iceland_start_smc_clock(hwmgr);


 iceland_start_smc(hwmgr);

 PHM_WAIT_INDIRECT_FIELD(hwmgr, SMC_IND, FIRMWARE_FLAGS,
     INTERRUPTS_ENABLED, 1);

 return 0;
}
