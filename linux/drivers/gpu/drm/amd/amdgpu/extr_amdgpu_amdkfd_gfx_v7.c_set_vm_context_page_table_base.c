
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int WREG32 (scalar_t__,int ) ;
 int amdgpu_amdkfd_is_kfd_vmid (struct amdgpu_device*,scalar_t__) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int lower_32_bits (int ) ;
 scalar_t__ mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR ;
 int pr_err (char*) ;

__attribute__((used)) static void set_vm_context_page_table_base(struct kgd_dev *kgd, uint32_t vmid,
   uint64_t page_table_base)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);

 if (!amdgpu_amdkfd_is_kfd_vmid(adev, vmid)) {
  pr_err("trying to set page table base for wrong VMID\n");
  return;
 }
 WREG32(mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR + vmid - 8,
  lower_32_bits(page_table_base));
}
