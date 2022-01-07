
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 int SMC_IND_ACCESS_CNTL__AUTO_INCREMENT_IND_0_MASK ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int ,int ) ;
 int mmSMC_IND_ACCESS_CNTL ;
 int mmSMC_IND_INDEX_0 ;

__attribute__((used)) static int kv_set_smc_sram_address(struct amdgpu_device *adev,
       u32 smc_address, u32 limit)
{
 if (smc_address & 3)
  return -EINVAL;
 if ((smc_address + 3) > limit)
  return -EINVAL;

 WREG32(mmSMC_IND_INDEX_0, smc_address);
 WREG32_P(mmSMC_IND_ACCESS_CNTL, 0,
   ~SMC_IND_ACCESS_CNTL__AUTO_INCREMENT_IND_0_MASK);

 return 0;
}
