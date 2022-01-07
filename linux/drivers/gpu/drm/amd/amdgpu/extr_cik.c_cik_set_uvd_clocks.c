
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int cik_set_uvd_clock (struct amdgpu_device*,int ,int ,int ) ;
 int ixCG_DCLK_CNTL ;
 int ixCG_DCLK_STATUS ;
 int ixCG_VCLK_CNTL ;
 int ixCG_VCLK_STATUS ;

__attribute__((used)) static int cik_set_uvd_clocks(struct amdgpu_device *adev, u32 vclk, u32 dclk)
{
 int r = 0;

 r = cik_set_uvd_clock(adev, vclk, ixCG_VCLK_CNTL, ixCG_VCLK_STATUS);
 if (r)
  return r;

 r = cik_set_uvd_clock(adev, dclk, ixCG_DCLK_CNTL, ixCG_DCLK_STATUS);
 return r;
}
