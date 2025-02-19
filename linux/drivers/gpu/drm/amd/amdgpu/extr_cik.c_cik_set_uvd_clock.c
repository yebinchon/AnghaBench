
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct atom_clock_dividers {int post_divider; } ;
struct amdgpu_device {int dummy; } ;


 int CG_DCLK_CNTL__DCLK_DIR_CNTL_EN_MASK ;
 int CG_DCLK_CNTL__DCLK_DIVIDER_MASK ;
 int CG_DCLK_STATUS__DCLK_STATUS_MASK ;
 int COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK ;
 int ETIMEDOUT ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int) ;
 int amdgpu_atombios_get_clock_dividers (struct amdgpu_device*,int ,int ,int,struct atom_clock_dividers*) ;
 int mdelay (int) ;

__attribute__((used)) static int cik_set_uvd_clock(struct amdgpu_device *adev, u32 clock,
         u32 cntl_reg, u32 status_reg)
{
 int r, i;
 struct atom_clock_dividers dividers;
 uint32_t tmp;

 r = amdgpu_atombios_get_clock_dividers(adev,
            COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK,
            clock, 0, &dividers);
 if (r)
  return r;

 tmp = RREG32_SMC(cntl_reg);
 tmp &= ~(CG_DCLK_CNTL__DCLK_DIR_CNTL_EN_MASK |
  CG_DCLK_CNTL__DCLK_DIVIDER_MASK);
 tmp |= dividers.post_divider;
 WREG32_SMC(cntl_reg, tmp);

 for (i = 0; i < 100; i++) {
  if (RREG32_SMC(status_reg) & CG_DCLK_STATUS__DCLK_STATUS_MASK)
   break;
  mdelay(10);
 }
 if (i == 100)
  return -ETIMEDOUT;

 return 0;
}
