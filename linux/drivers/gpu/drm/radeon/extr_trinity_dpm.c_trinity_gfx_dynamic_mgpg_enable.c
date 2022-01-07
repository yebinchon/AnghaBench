
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int DS_PG_CNTL (int) ;
 int DS_PG_CNTL_MASK ;
 int DS_PG_EN (int) ;
 int DS_PG_EN_MASK ;
 int PM_I_CNTL_1 ;
 int RREG32_SMC (int ) ;
 int SMU_S_PG_CNTL ;
 int WREG32_SMC (int ,int ) ;
 int trinity_gfx_dynamic_mgpg_config (struct radeon_device*) ;

__attribute__((used)) static void trinity_gfx_dynamic_mgpg_enable(struct radeon_device *rdev,
         bool enable)
{
 u32 value;

 if (enable) {
  value = RREG32_SMC(PM_I_CNTL_1);
  value &= ~DS_PG_CNTL_MASK;
  value |= DS_PG_CNTL(1);
  WREG32_SMC(PM_I_CNTL_1, value);

  value = RREG32_SMC(SMU_S_PG_CNTL);
  value &= ~DS_PG_EN_MASK;
  value |= DS_PG_EN(1);
  WREG32_SMC(SMU_S_PG_CNTL, value);
 } else {
  value = RREG32_SMC(SMU_S_PG_CNTL);
  value &= ~DS_PG_EN_MASK;
  WREG32_SMC(SMU_S_PG_CNTL, value);

  value = RREG32_SMC(PM_I_CNTL_1);
  value &= ~DS_PG_CNTL_MASK;
  WREG32_SMC(PM_I_CNTL_1, value);
 }

 trinity_gfx_dynamic_mgpg_config(rdev);

}
