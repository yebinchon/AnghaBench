
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int SMC_SYSCON_RESET_CNTL ;
 int rst_reg ;

__attribute__((used)) static void iceland_reset_smc(struct pp_hwmgr *hwmgr)
{
 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
      SMC_SYSCON_RESET_CNTL,
      rst_reg, 1);
}
