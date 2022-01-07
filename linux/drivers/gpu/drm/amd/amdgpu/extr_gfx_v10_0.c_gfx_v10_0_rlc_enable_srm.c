
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int RLC_SRM_CNTL__AUTO_INCR_ADDR_MASK ;
 int RLC_SRM_CNTL__SRM_ENABLE_MASK ;
 int RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int ) ;
 int mmRLC_SRM_CNTL ;

__attribute__((used)) static void gfx_v10_0_rlc_enable_srm(struct amdgpu_device *adev)
{
 uint32_t tmp;


 tmp = RREG32(SOC15_REG_OFFSET(GC, 0, mmRLC_SRM_CNTL));
 tmp |= RLC_SRM_CNTL__AUTO_INCR_ADDR_MASK;
 tmp |= RLC_SRM_CNTL__SRM_ENABLE_MASK;
 WREG32(SOC15_REG_OFFSET(GC, 0, mmRLC_SRM_CNTL), tmp);
}
