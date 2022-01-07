
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int pg_flags; } ;


 int RADEON_PG_SUPPORT_GFX_SMG ;
 int RLC_PG_CNTL ;
 int RREG32 (int ) ;
 int STATIC_PER_CU_PG_ENABLE ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void cik_enable_gfx_static_mgpg(struct radeon_device *rdev,
           bool enable)
{
 u32 data, orig;

 orig = data = RREG32(RLC_PG_CNTL);
 if (enable && (rdev->pg_flags & RADEON_PG_SUPPORT_GFX_SMG))
  data |= STATIC_PER_CU_PG_ENABLE;
 else
  data &= ~STATIC_PER_CU_PG_ENABLE;
 if (orig != data)
  WREG32(RLC_PG_CNTL, data);
}
