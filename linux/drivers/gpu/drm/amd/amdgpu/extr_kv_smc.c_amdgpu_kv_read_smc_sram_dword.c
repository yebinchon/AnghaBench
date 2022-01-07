
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int kv_set_smc_sram_address (struct amdgpu_device*,int ,int ) ;
 int mmSMC_IND_DATA_0 ;

int amdgpu_kv_read_smc_sram_dword(struct amdgpu_device *adev, u32 smc_address,
      u32 *value, u32 limit)
{
 int ret;

 ret = kv_set_smc_sram_address(adev, smc_address, limit);
 if (ret)
  return ret;

 *value = RREG32(mmSMC_IND_DATA_0);
 return 0;
}
