
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32 (int ) ;
 int VMID ;
 int VM_CONTEXT1_PROTECTION_FAULT_STATUS ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int mmVM_CONTEXT1_PROTECTION_FAULT_STATUS ;

__attribute__((used)) static uint32_t read_vmid_from_vmfault_reg(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);

 uint32_t status = RREG32(mmVM_CONTEXT1_PROTECTION_FAULT_STATUS);

 return REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS, VMID);
}
