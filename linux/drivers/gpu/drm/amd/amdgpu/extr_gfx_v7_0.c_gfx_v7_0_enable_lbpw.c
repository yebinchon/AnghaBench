
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RLC_LB_CNTL__LOAD_BALANCE_ENABLE_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmRLC_LB_CNTL ;

__attribute__((used)) static void gfx_v7_0_enable_lbpw(struct amdgpu_device *adev, bool enable)
{
 u32 tmp;

 tmp = RREG32(mmRLC_LB_CNTL);
 if (enable)
  tmp |= RLC_LB_CNTL__LOAD_BALANCE_ENABLE_MASK;
 else
  tmp &= ~RLC_LB_CNTL__LOAD_BALANCE_ENABLE_MASK;
 WREG32(mmRLC_LB_CNTL, tmp);
}
