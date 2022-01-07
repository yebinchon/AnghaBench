
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int cg_flags; TYPE_1__ sdma; } ;


 int AMD_CG_SUPPORT_SDMA_MGCG ;
 int RREG32_SDMA (int,int ) ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK ;
 int WREG32_SDMA (int,int ,int) ;
 int mmSDMA0_CLK_CTRL ;

__attribute__((used)) static void sdma_v4_0_update_medium_grain_clock_gating(
  struct amdgpu_device *adev,
  bool enable)
{
 uint32_t data, def;
 int i;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_MGCG)) {
  for (i = 0; i < adev->sdma.num_instances; i++) {
   def = data = RREG32_SDMA(i, mmSDMA0_CLK_CTRL);
   data &= ~(SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK |
      SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK);
   if (def != data)
    WREG32_SDMA(i, mmSDMA0_CLK_CTRL, data);
  }
 } else {
  for (i = 0; i < adev->sdma.num_instances; i++) {
   def = data = RREG32_SDMA(i, mmSDMA0_CLK_CTRL);
   data |= (SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK |
     SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK);
   if (def != data)
    WREG32_SDMA(i, mmSDMA0_CLK_CTRL, data);
  }
 }
}
