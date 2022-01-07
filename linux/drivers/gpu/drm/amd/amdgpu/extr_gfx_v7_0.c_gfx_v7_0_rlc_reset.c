
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmGRBM_SOFT_RESET ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v7_0_rlc_reset(struct amdgpu_device *adev)
{
 u32 tmp = RREG32(mmGRBM_SOFT_RESET);

 tmp |= GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK;
 WREG32(mmGRBM_SOFT_RESET, tmp);
 udelay(50);
 tmp &= ~GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK;
 WREG32(mmGRBM_SOFT_RESET, tmp);
 udelay(50);
}
