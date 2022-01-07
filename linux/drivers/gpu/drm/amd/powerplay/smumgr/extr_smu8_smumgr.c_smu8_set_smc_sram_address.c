
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int * device; } ;


 int EINVAL ;
 scalar_t__ SMN_MP1_SRAM_START_ADDR ;
 int cgs_write_register (int *,int ,scalar_t__) ;
 int mmMP0PUB_IND_INDEX_0 ;
 int pr_err (char*) ;

__attribute__((used)) static int smu8_set_smc_sram_address(struct pp_hwmgr *hwmgr,
         uint32_t smc_address, uint32_t limit)
{
 if (hwmgr == ((void*)0) || hwmgr->device == ((void*)0))
  return -EINVAL;

 if (0 != (3 & smc_address)) {
  pr_err("SMC address must be 4 byte aligned\n");
  return -EINVAL;
 }

 if (limit <= (smc_address + 3)) {
  pr_err("SMC address beyond the SMC RAM area\n");
  return -EINVAL;
 }

 cgs_write_register(hwmgr->device, mmMP0PUB_IND_INDEX_0,
    SMN_MP1_SRAM_START_ADDR + smc_address);

 return 0;
}
