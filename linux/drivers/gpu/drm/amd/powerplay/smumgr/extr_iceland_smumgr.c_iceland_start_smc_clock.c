
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int ) ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int ck_disable ;

__attribute__((used)) static void iceland_start_smc_clock(struct pp_hwmgr *hwmgr)
{
 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
      SMC_SYSCON_CLOCK_CNTL_0,
      ck_disable, 0);
}
