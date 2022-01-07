
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_SDMA_MGCG ;
 int RREG32 (scalar_t__) ;
 scalar_t__ SDMA0_REGISTER_OFFSET ;
 scalar_t__ SDMA1_REGISTER_OFFSET ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__ mmSDMA0_CLK_CTRL ;

__attribute__((used)) static void cik_enable_sdma_mgcg(struct amdgpu_device *adev,
     bool enable)
{
 u32 orig, data;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_MGCG)) {
  WREG32(mmSDMA0_CLK_CTRL + SDMA0_REGISTER_OFFSET, 0x00000100);
  WREG32(mmSDMA0_CLK_CTRL + SDMA1_REGISTER_OFFSET, 0x00000100);
 } else {
  orig = data = RREG32(mmSDMA0_CLK_CTRL + SDMA0_REGISTER_OFFSET);
  data |= 0xff000000;
  if (data != orig)
   WREG32(mmSDMA0_CLK_CTRL + SDMA0_REGISTER_OFFSET, data);

  orig = data = RREG32(mmSDMA0_CLK_CTRL + SDMA1_REGISTER_OFFSET);
  data |= 0xff000000;
  if (data != orig)
   WREG32(mmSDMA0_CLK_CTRL + SDMA1_REGISTER_OFFSET, data);
 }
}
