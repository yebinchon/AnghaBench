
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
 int RLC_PG_CNTL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void cik_enable_gfx_cgpg(struct radeon_device *rdev,
    bool enable)
{
 u32 data, orig;

 if (enable && (rdev->pg_flags & RADEON_PG_SUPPORT_GFX_PG)) {
  orig = data = RREG32(RLC_PG_CNTL);
  data |= GFX_PG_ENABLE;
  if (orig != data)
   WREG32(RLC_PG_CNTL, data);

  orig = data = RREG32(RLC_AUTO_PG_CTRL);
  data |= AUTO_PG_EN;
  if (orig != data)
   WREG32(RLC_AUTO_PG_CTRL, data);
 } else {
  orig = data = RREG32(RLC_PG_CNTL);
  data &= ~GFX_PG_ENABLE;
  if (orig != data)
   WREG32(RLC_PG_CNTL, data);

  orig = data = RREG32(RLC_AUTO_PG_CTRL);
  data &= ~AUTO_PG_EN;
  if (orig != data)
   WREG32(RLC_AUTO_PG_CTRL, data);

  data = RREG32(DB_RENDER_CONTROL);
 }
}
