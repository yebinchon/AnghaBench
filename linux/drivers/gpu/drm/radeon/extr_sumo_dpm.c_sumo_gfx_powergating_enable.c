
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_PWR_GATING_CNTL ;
 int DYN_PWR_DOWN_EN ;
 int GB_ADDR_CONFIG ;
 int RREG32 (int ) ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_gfx_powergating_enable(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_P(CG_PWR_GATING_CNTL, DYN_PWR_DOWN_EN, ~DYN_PWR_DOWN_EN);
 else {
  WREG32_P(CG_PWR_GATING_CNTL, 0, ~DYN_PWR_DOWN_EN);
  RREG32(GB_ADDR_CONFIG);
 }
}
