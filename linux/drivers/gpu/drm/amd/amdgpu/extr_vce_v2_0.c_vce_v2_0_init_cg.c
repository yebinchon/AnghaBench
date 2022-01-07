
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmVCE_CLOCK_GATING_A ;
 int mmVCE_CLOCK_GATING_B ;
 int mmVCE_UENC_CLOCK_GATING ;

__attribute__((used)) static void vce_v2_0_init_cg(struct amdgpu_device *adev)
{
 u32 tmp;

 tmp = RREG32(mmVCE_CLOCK_GATING_A);
 tmp &= ~0xfff;
 tmp |= ((0 << 0) | (4 << 4));
 tmp |= 0x40000;
 WREG32(mmVCE_CLOCK_GATING_A, tmp);

 tmp = RREG32(mmVCE_UENC_CLOCK_GATING);
 tmp &= ~0xfff;
 tmp |= ((0 << 0) | (4 << 4));
 WREG32(mmVCE_UENC_CLOCK_GATING, tmp);

 tmp = RREG32(mmVCE_CLOCK_GATING_B);
 tmp |= 0x10;
 tmp &= ~0x100000;
 WREG32(mmVCE_CLOCK_GATING_B, tmp);
}
