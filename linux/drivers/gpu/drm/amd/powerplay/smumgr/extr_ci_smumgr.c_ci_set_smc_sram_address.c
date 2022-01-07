
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; } ;


 int AUTO_INCREMENT_IND_0 ;
 int EINVAL ;
 int PHM_WRITE_FIELD (int ,int ,int ,int ) ;
 int SMC_IND_ACCESS_CNTL ;
 int cgs_write_register (int ,int ,int) ;
 int mmSMC_IND_INDEX_0 ;
 int pr_err (char*) ;

__attribute__((used)) static int ci_set_smc_sram_address(struct pp_hwmgr *hwmgr,
     uint32_t smc_addr, uint32_t limit)
{
 if ((0 != (3 & smc_addr))
  || ((smc_addr + 3) >= limit)) {
  pr_err("smc_addr invalid \n");
  return -EINVAL;
 }

 cgs_write_register(hwmgr->device, mmSMC_IND_INDEX_0, smc_addr);
 PHM_WRITE_FIELD(hwmgr->device, SMC_IND_ACCESS_CNTL, AUTO_INCREMENT_IND_0, 0);
 return 0;
}
