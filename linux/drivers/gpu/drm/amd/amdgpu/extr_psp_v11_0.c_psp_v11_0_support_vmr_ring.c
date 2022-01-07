
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int sos_fw_version; int adev; } ;


 scalar_t__ amdgpu_sriov_vf (int ) ;

__attribute__((used)) static bool psp_v11_0_support_vmr_ring(struct psp_context *psp)
{
 if (amdgpu_sriov_vf(psp->adev) && psp->sos_fw_version > 0x80045)
  return 1;
 return 0;
}
