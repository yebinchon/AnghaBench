
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_SDMA_LS ;
 int AMD_CG_SUPPORT_SDMA_MGCG ;
 int RREG32 (int ) ;
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK ;
 int SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmSDMA0_CLK_CTRL ;
 int mmSDMA0_POWER_CNTL ;
 int sdma_v5_0_get_reg_offset (struct amdgpu_device*,int ,int ) ;

__attribute__((used)) static void sdma_v5_0_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int data;

 if (amdgpu_sriov_vf(adev))
  *flags = 0;


 data = RREG32(sdma_v5_0_get_reg_offset(adev, 0, mmSDMA0_CLK_CTRL));
 if (!(data & SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK))
  *flags |= AMD_CG_SUPPORT_SDMA_MGCG;


 data = RREG32(sdma_v5_0_get_reg_offset(adev, 0, mmSDMA0_POWER_CNTL));
 if (data & SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK)
  *flags |= AMD_CG_SUPPORT_SDMA_LS;
}
