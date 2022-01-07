
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int cg_flags; TYPE_1__ sdma; } ;


 int AMD_CG_SUPPORT_SDMA_MGCG ;
 int RREG32 (int ) ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK ;
 int WREG32 (int ,int) ;
 int mmSDMA0_CLK_CTRL ;
 int sdma_v5_0_get_reg_offset (struct amdgpu_device*,int,int ) ;

__attribute__((used)) static void sdma_v5_0_update_medium_grain_clock_gating(struct amdgpu_device *adev,
             bool enable)
{
 uint32_t data, def;
 int i;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_MGCG)) {

   def = data = RREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_CLK_CTRL));
   data &= ~(SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK);
   if (def != data)
    WREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_CLK_CTRL), data);
  } else {

   def = data = RREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_CLK_CTRL));
   data |= (SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK);
   if (def != data)
    WREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_CLK_CTRL), data);
  }
 }
}
