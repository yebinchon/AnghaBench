
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int FIRMWARE_FLAGS ;
 int INTERRUPTS_ENABLED ;
 int PHM_WAIT_INDIRECT_FIELD (struct pp_hwmgr*,int ,int ,int ,int) ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int ) ;
 int SMC_IND ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int SMC_SYSCON_RESET_CNTL ;
 int ci_program_jump_on_start (struct pp_hwmgr*) ;
 int ck_disable ;
 int rst_reg ;

__attribute__((used)) static int ci_start_smc(struct pp_hwmgr *hwmgr)
{

 ci_program_jump_on_start(hwmgr);


 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC, SMC_SYSCON_CLOCK_CNTL_0, ck_disable, 0);

 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC, SMC_SYSCON_RESET_CNTL, rst_reg, 0);

 PHM_WAIT_INDIRECT_FIELD(hwmgr, SMC_IND, FIRMWARE_FLAGS,
     INTERRUPTS_ENABLED, 1);

 return 0;
}
