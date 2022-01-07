
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int caps; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int AMDGPU_PASSTHROUGH_MODE ;
 int AMDGPU_SRIOV_CAPS_ENABLE_IOV ;
 int AMDGPU_SRIOV_CAPS_IS_VF ;
 int NBIO ;
 int RREG32_SOC15 (int ,int ,int ) ;
 scalar_t__ is_virtual_machine () ;
 int mmRCC_PF_0_0_RCC_IOV_FUNC_IDENTIFIER ;

__attribute__((used)) static void nbio_v6_1_detect_hw_virt(struct amdgpu_device *adev)
{
 uint32_t reg;

 reg = RREG32_SOC15(NBIO, 0, mmRCC_PF_0_0_RCC_IOV_FUNC_IDENTIFIER);
 if (reg & 1)
  adev->virt.caps |= AMDGPU_SRIOV_CAPS_IS_VF;

 if (reg & 0x80000000)
  adev->virt.caps |= AMDGPU_SRIOV_CAPS_ENABLE_IOV;

 if (!reg) {
  if (is_virtual_machine())
   adev->virt.caps |= AMDGPU_PASSTHROUGH_MODE;
 }
}
