
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_SDMA_LS ;
 int AMD_CG_SUPPORT_SDMA_MGCG ;
 int RREG32 (scalar_t__) ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK ;
 int SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 scalar_t__ mmSDMA0_CLK_CTRL ;
 scalar_t__ mmSDMA0_POWER_CNTL ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static void sdma_v3_0_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int data;

 if (amdgpu_sriov_vf(adev))
  *flags = 0;


 data = RREG32(mmSDMA0_CLK_CTRL + sdma_offsets[0]);
 if (!(data & SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK))
  *flags |= AMD_CG_SUPPORT_SDMA_MGCG;


 data = RREG32(mmSDMA0_POWER_CNTL + sdma_offsets[0]);
 if (data & SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK)
  *flags |= AMD_CG_SUPPORT_SDMA_LS;
}
