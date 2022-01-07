
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_iv_entry {int * src_data; int src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dev; } ;


 scalar_t__ AMDGPU_VM_FAULT_STOP_FIRST ;
 int RREG32 (int ) ;
 int WREG32_P (int ,int,int) ;
 scalar_t__ amdgpu_vm_fault_stop ;
 int dev_err (int ,char*,int ,...) ;
 int gmc_v6_0_set_fault_enable_default (struct amdgpu_device*,int) ;
 int gmc_v6_0_vm_decode_fault (struct amdgpu_device*,int ,int ,int ) ;
 int mmVM_CONTEXT1_CNTL2 ;
 int mmVM_CONTEXT1_PROTECTION_FAULT_ADDR ;
 int mmVM_CONTEXT1_PROTECTION_FAULT_STATUS ;
 scalar_t__ printk_ratelimit () ;

__attribute__((used)) static int gmc_v6_0_process_interrupt(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 u32 addr, status;

 addr = RREG32(mmVM_CONTEXT1_PROTECTION_FAULT_ADDR);
 status = RREG32(mmVM_CONTEXT1_PROTECTION_FAULT_STATUS);
 WREG32_P(mmVM_CONTEXT1_CNTL2, 1, ~1);

 if (!addr && !status)
  return 0;

 if (amdgpu_vm_fault_stop == AMDGPU_VM_FAULT_STOP_FIRST)
  gmc_v6_0_set_fault_enable_default(adev, 0);

 if (printk_ratelimit()) {
  dev_err(adev->dev, "GPU fault detected: %d 0x%08x\n",
   entry->src_id, entry->src_data[0]);
  dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
   addr);
  dev_err(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
   status);
  gmc_v6_0_vm_decode_fault(adev, status, addr, 0);
 }

 return 0;
}
