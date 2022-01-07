
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; } ;


 int cgs_read_register (int ,int ) ;
 int ci_set_smc_sram_address (struct pp_hwmgr*,int ,int ) ;
 int mmSMC_IND_DATA_0 ;

__attribute__((used)) static int ci_read_smc_sram_dword(struct pp_hwmgr *hwmgr, uint32_t smc_addr,
    uint32_t *value, uint32_t limit)
{
 int result;

 result = ci_set_smc_sram_address(hwmgr, smc_addr, limit);

 if (result)
  return result;

 *value = cgs_read_register(hwmgr->device, mmSMC_IND_DATA_0);
 return 0;
}
