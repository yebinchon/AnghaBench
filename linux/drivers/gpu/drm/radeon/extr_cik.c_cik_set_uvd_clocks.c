
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_DCLK_CNTL ;
 int CG_DCLK_STATUS ;
 int CG_VCLK_CNTL ;
 int CG_VCLK_STATUS ;
 int cik_set_uvd_clock (struct radeon_device*,int ,int ,int ) ;

int cik_set_uvd_clocks(struct radeon_device *rdev, u32 vclk, u32 dclk)
{
 int r = 0;

 r = cik_set_uvd_clock(rdev, vclk, CG_VCLK_CNTL, CG_VCLK_STATUS);
 if (r)
  return r;

 r = cik_set_uvd_clock(rdev, dclk, CG_DCLK_CNTL, CG_DCLK_STATUS);
 return r;
}
