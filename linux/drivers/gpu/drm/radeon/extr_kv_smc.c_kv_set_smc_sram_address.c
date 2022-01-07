
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int AUTO_INCREMENT_IND_0 ;
 int EINVAL ;
 int SMC_IND_ACCESS_CNTL ;
 int SMC_IND_INDEX_0 ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static int kv_set_smc_sram_address(struct radeon_device *rdev,
       u32 smc_address, u32 limit)
{
 if (smc_address & 3)
  return -EINVAL;
 if ((smc_address + 3) > limit)
  return -EINVAL;

 WREG32(SMC_IND_INDEX_0, smc_address);
 WREG32_P(SMC_IND_ACCESS_CNTL, 0, ~AUTO_INCREMENT_IND_0);

 return 0;
}
