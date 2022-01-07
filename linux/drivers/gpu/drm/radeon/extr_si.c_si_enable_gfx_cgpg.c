
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int pg_flags; } ;


 int AUTO_PG_EN ;
 int DB_RENDER_CONTROL ;
 int GFX_PG_ENABLE ;
 int RADEON_PG_SUPPORT_GFX_PG ;
 int RLC_AUTO_PG_CTRL ;
 int RLC_MSD (int) ;
 int RLC_PDD (int) ;
 int RLC_PG_CNTL ;
 int RLC_PUD (int) ;
 int RLC_TTOP_D ;
 int RLC_TTPD (int) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void si_enable_gfx_cgpg(struct radeon_device *rdev,
          bool enable)
{
 u32 tmp;

 if (enable && (rdev->pg_flags & RADEON_PG_SUPPORT_GFX_PG)) {
  tmp = RLC_PUD(0x10) | RLC_PDD(0x10) | RLC_TTPD(0x10) | RLC_MSD(0x10);
  WREG32(RLC_TTOP_D, tmp);

  tmp = RREG32(RLC_PG_CNTL);
  tmp |= GFX_PG_ENABLE;
  WREG32(RLC_PG_CNTL, tmp);

  tmp = RREG32(RLC_AUTO_PG_CTRL);
  tmp |= AUTO_PG_EN;
  WREG32(RLC_AUTO_PG_CTRL, tmp);
 } else {
  tmp = RREG32(RLC_AUTO_PG_CTRL);
  tmp &= ~AUTO_PG_EN;
  WREG32(RLC_AUTO_PG_CTRL, tmp);

  tmp = RREG32(DB_RENDER_CONTROL);
 }
}
