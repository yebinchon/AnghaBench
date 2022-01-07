
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_ARCTURUS ;
 int amdgpu_amdkfd_is_kfd_vmid (struct amdgpu_device*,int ) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int gfxhub_v1_0_setup_vm_pt_regs (struct amdgpu_device*,int ,int ) ;
 int mmhub_v1_0_setup_vm_pt_regs (struct amdgpu_device*,int ,int ) ;
 int mmhub_v9_4_setup_vm_pt_regs (struct amdgpu_device*,int,int ,int ) ;
 int pr_err (char*,int ) ;

void kgd_gfx_v9_set_vm_context_page_table_base(struct kgd_dev *kgd, uint32_t vmid,
  uint64_t page_table_base)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);

 if (!amdgpu_amdkfd_is_kfd_vmid(adev, vmid)) {
  pr_err("trying to set page table base for wrong VMID %u\n",
         vmid);
  return;
 }





 if (adev->asic_type == CHIP_ARCTURUS) {

  mmhub_v9_4_setup_vm_pt_regs(adev, 0, vmid, page_table_base);
  mmhub_v9_4_setup_vm_pt_regs(adev, 1, vmid, page_table_base);
 } else
  mmhub_v1_0_setup_vm_pt_regs(adev, vmid, page_table_base);

 gfxhub_v1_0_setup_vm_pt_regs(adev, vmid, page_table_base);
}
