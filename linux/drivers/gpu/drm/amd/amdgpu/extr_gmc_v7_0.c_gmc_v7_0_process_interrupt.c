
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kfd_vm_fault_info {int vmid; int status; int page_addr; int prot_valid; int prot_read; int prot_write; int prot_exec; void* mc_id; } ;
struct amdgpu_iv_entry {int pasid; int * src_data; int src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int vm_fault_info_updated; struct kfd_vm_fault_info* vm_fault_info; } ;
struct amdgpu_device {TYPE_1__ gmc; int dev; } ;


 scalar_t__ AMDGPU_VM_FAULT_STOP_FIRST ;
 int MEMORY_CLIENT_ID ;
 int PROTECTIONS ;
 void* REG_GET_FIELD (int,int ,int ) ;
 int RREG32 (int ) ;
 int VMID ;
 int VM_CONTEXT1_PROTECTION_FAULT_STATUS ;
 int WREG32_P (int ,int,int) ;
 scalar_t__ amdgpu_amdkfd_is_kfd_vmid (struct amdgpu_device*,int) ;
 scalar_t__ amdgpu_vm_fault_stop ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int dev_err (int ,char*,int,...) ;
 int gmc_v7_0_set_fault_enable_default (struct amdgpu_device*,int) ;
 int gmc_v7_0_vm_decode_fault (struct amdgpu_device*,int,int,int,int ) ;
 int mb () ;
 int mmVM_CONTEXT1_CNTL2 ;
 int mmVM_CONTEXT1_PROTECTION_FAULT_ADDR ;
 int mmVM_CONTEXT1_PROTECTION_FAULT_MCCLIENT ;
 int mmVM_CONTEXT1_PROTECTION_FAULT_STATUS ;
 scalar_t__ printk_ratelimit () ;

__attribute__((used)) static int gmc_v7_0_process_interrupt(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 u32 addr, status, mc_client, vmid;

 addr = RREG32(mmVM_CONTEXT1_PROTECTION_FAULT_ADDR);
 status = RREG32(mmVM_CONTEXT1_PROTECTION_FAULT_STATUS);
 mc_client = RREG32(mmVM_CONTEXT1_PROTECTION_FAULT_MCCLIENT);

 WREG32_P(mmVM_CONTEXT1_CNTL2, 1, ~1);

 if (!addr && !status)
  return 0;

 if (amdgpu_vm_fault_stop == AMDGPU_VM_FAULT_STOP_FIRST)
  gmc_v7_0_set_fault_enable_default(adev, 0);

 if (printk_ratelimit()) {
  dev_err(adev->dev, "GPU fault detected: %d 0x%08x\n",
   entry->src_id, entry->src_data[0]);
  dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
   addr);
  dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
   status);
  gmc_v7_0_vm_decode_fault(adev, status, addr, mc_client,
      entry->pasid);
 }

 vmid = REG_GET_FIELD(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
        VMID);
 if (amdgpu_amdkfd_is_kfd_vmid(adev, vmid)
  && !atomic_read(&adev->gmc.vm_fault_info_updated)) {
  struct kfd_vm_fault_info *info = adev->gmc.vm_fault_info;
  u32 protections = REG_GET_FIELD(status,
     VM_CONTEXT1_PROTECTION_FAULT_STATUS,
     PROTECTIONS);

  info->vmid = vmid;
  info->mc_id = REG_GET_FIELD(status,
         VM_CONTEXT1_PROTECTION_FAULT_STATUS,
         MEMORY_CLIENT_ID);
  info->status = status;
  info->page_addr = addr;
  info->prot_valid = protections & 0x7 ? 1 : 0;
  info->prot_read = protections & 0x8 ? 1 : 0;
  info->prot_write = protections & 0x10 ? 1 : 0;
  info->prot_exec = protections & 0x20 ? 1 : 0;
  mb();
  atomic_set(&adev->gmc.vm_fault_info_updated, 1);
 }

 return 0;
}
