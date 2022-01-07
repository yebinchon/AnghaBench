
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int caps; } ;
struct amdgpu_device {TYPE_1__ virt; scalar_t__ is_atom_fw; } ;


 int AMDGIM_ERROR_VF_NO_VBIOS ;
 int AMDGPU_SRIOV_CAPS_SRIOV_VBIOS ;
 scalar_t__ amdgpu_atombios_has_gpu_virtualization_table (struct amdgpu_device*) ;
 scalar_t__ amdgpu_atomfirmware_gpu_supports_virtualization (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int amdgpu_vf_error_put (struct amdgpu_device*,int ,int ,int ) ;

__attribute__((used)) static void amdgpu_device_detect_sriov_bios(struct amdgpu_device *adev)
{
 if (amdgpu_sriov_vf(adev)) {
  if (adev->is_atom_fw) {
   if (amdgpu_atomfirmware_gpu_supports_virtualization(adev))
    adev->virt.caps |= AMDGPU_SRIOV_CAPS_SRIOV_VBIOS;
  } else {
   if (amdgpu_atombios_has_gpu_virtualization_table(adev))
    adev->virt.caps |= AMDGPU_SRIOV_CAPS_SRIOV_VBIOS;
  }

  if (!(adev->virt.caps & AMDGPU_SRIOV_CAPS_SRIOV_VBIOS))
   amdgpu_vf_error_put(adev, AMDGIM_ERROR_VF_NO_VBIOS, 0, 0);
 }
}
