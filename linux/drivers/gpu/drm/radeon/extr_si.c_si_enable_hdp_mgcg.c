
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int cg_flags; } ;


 int CLOCK_GATING_DIS ;
 int HDP_HOST_PATH_CNTL ;
 int RADEON_CG_SUPPORT_HDP_MGCG ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void si_enable_hdp_mgcg(struct radeon_device *rdev,
          bool enable)
{
 u32 orig, data;

 orig = data = RREG32(HDP_HOST_PATH_CNTL);

 if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_HDP_MGCG))
  data &= ~CLOCK_GATING_DIS;
 else
  data |= CLOCK_GATING_DIS;

 if (orig != data)
  WREG32(HDP_HOST_PATH_CNTL, data);
}
