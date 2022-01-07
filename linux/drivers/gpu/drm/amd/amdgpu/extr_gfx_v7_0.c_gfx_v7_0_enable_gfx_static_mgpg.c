
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_GFX_SMG ;
 int RLC_PG_CNTL__STATIC_PER_CU_PG_ENABLE_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmRLC_PG_CNTL ;

__attribute__((used)) static void gfx_v7_0_enable_gfx_static_mgpg(struct amdgpu_device *adev,
         bool enable)
{
 u32 data, orig;

 orig = data = RREG32(mmRLC_PG_CNTL);
 if (enable && (adev->pg_flags & AMD_PG_SUPPORT_GFX_SMG))
  data |= RLC_PG_CNTL__STATIC_PER_CU_PG_ENABLE_MASK;
 else
  data &= ~RLC_PG_CNTL__STATIC_PER_CU_PG_ENABLE_MASK;
 if (orig != data)
  WREG32(mmRLC_PG_CNTL, data);
}
