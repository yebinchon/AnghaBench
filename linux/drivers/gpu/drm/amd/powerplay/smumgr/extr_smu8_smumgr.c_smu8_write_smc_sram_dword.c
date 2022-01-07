
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int * device; } ;


 int EINVAL ;
 int cgs_write_register (int *,int ,int ) ;
 int mmMP0PUB_IND_DATA_0 ;
 int smu8_set_smc_sram_address (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_write_smc_sram_dword(struct pp_hwmgr *hwmgr,
  uint32_t smc_address, uint32_t value, uint32_t limit)
{
 int result;

 if (hwmgr == ((void*)0) || hwmgr->device == ((void*)0))
  return -EINVAL;

 result = smu8_set_smc_sram_address(hwmgr, smc_address, limit);
 if (!result)
  cgs_write_register(hwmgr->device, mmMP0PUB_IND_DATA_0, value);

 return result;
}
