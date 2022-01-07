
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_DCLK_CNTL ;
 int CG_DCLK_STATUS ;
 int CG_SCRATCH1 ;
 int CG_VCLK_CNTL ;
 int CG_VCLK_STATUS ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int sumo_set_uvd_clock (struct radeon_device*,int,int ,int ) ;

int sumo_set_uvd_clocks(struct radeon_device *rdev, u32 vclk, u32 dclk)
{
 int r = 0;
 u32 cg_scratch = RREG32(CG_SCRATCH1);

 r = sumo_set_uvd_clock(rdev, vclk, CG_VCLK_CNTL, CG_VCLK_STATUS);
 if (r)
  goto done;
 cg_scratch &= 0xffff0000;
 cg_scratch |= vclk / 100;

 r = sumo_set_uvd_clock(rdev, dclk, CG_DCLK_CNTL, CG_DCLK_STATUS);
 if (r)
  goto done;
 cg_scratch &= 0x0000ffff;
 cg_scratch |= (dclk / 100) << 16;

done:
 WREG32(CG_SCRATCH1, cg_scratch);

 return r;
}
