
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int C_000009_ENABLE_PAGE_TABLES ;
 int RREG32_MC (int ) ;
 int R_000009_MC_CNTL1 ;
 int R_000100_MC_PT0_CNTL ;
 int WREG32_MC (int ,int) ;
 int radeon_gart_table_vram_unpin (struct radeon_device*) ;

__attribute__((used)) static void rs600_gart_disable(struct radeon_device *rdev)
{
 u32 tmp;


 WREG32_MC(R_000100_MC_PT0_CNTL, 0);
 tmp = RREG32_MC(R_000009_MC_CNTL1);
 WREG32_MC(R_000009_MC_CNTL1, tmp & C_000009_ENABLE_PAGE_TABLES);
 radeon_gart_table_vram_unpin(rdev);
}
