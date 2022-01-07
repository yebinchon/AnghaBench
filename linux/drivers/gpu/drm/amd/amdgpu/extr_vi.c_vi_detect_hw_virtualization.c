
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int caps; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ virt; } ;


 int AMDGPU_PASSTHROUGH_MODE ;
 int AMDGPU_SRIOV_CAPS_ENABLE_IOV ;
 int AMDGPU_SRIOV_CAPS_IS_VF ;
 int BIF_IOV_FUNC_IDENTIFIER ;
 scalar_t__ CHIP_FIJI ;
 scalar_t__ CHIP_TONGA ;
 int FUNC_IDENTIFIER ;
 int IOV_ENABLE ;
 scalar_t__ REG_GET_FIELD (scalar_t__,int ,int ) ;
 scalar_t__ RREG32 (int ) ;
 scalar_t__ is_virtual_machine () ;
 int mmBIF_IOV_FUNC_IDENTIFIER ;

__attribute__((used)) static void vi_detect_hw_virtualization(struct amdgpu_device *adev)
{
 uint32_t reg = 0;

 if (adev->asic_type == CHIP_TONGA ||
     adev->asic_type == CHIP_FIJI) {
        reg = RREG32(mmBIF_IOV_FUNC_IDENTIFIER);

        if (REG_GET_FIELD(reg, BIF_IOV_FUNC_IDENTIFIER, FUNC_IDENTIFIER))
         adev->virt.caps |= AMDGPU_SRIOV_CAPS_IS_VF;

        if (REG_GET_FIELD(reg, BIF_IOV_FUNC_IDENTIFIER, IOV_ENABLE))
         adev->virt.caps |= AMDGPU_SRIOV_CAPS_ENABLE_IOV;
 }

 if (reg == 0) {
  if (is_virtual_machine())
   adev->virt.caps |= AMDGPU_PASSTHROUGH_MODE;
 }
}
