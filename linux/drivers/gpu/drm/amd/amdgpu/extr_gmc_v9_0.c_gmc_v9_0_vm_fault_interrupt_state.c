
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct amdgpu_vmhub {size_t vm_context0_cntl; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {size_t num_vmhubs; struct amdgpu_vmhub* vmhub; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 size_t RREG32 (size_t) ;
 size_t VM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK ;
 size_t VM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK ;
 size_t VM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK ;
 size_t VM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK ;
 size_t VM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK ;
 size_t VM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK ;
 size_t VM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK ;
 int WREG32 (size_t,size_t) ;

__attribute__((used)) static int gmc_v9_0_vm_fault_interrupt_state(struct amdgpu_device *adev,
     struct amdgpu_irq_src *src,
     unsigned type,
     enum amdgpu_interrupt_state state)
{
 struct amdgpu_vmhub *hub;
 u32 tmp, reg, bits, i, j;

 bits = VM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK |
  VM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK |
  VM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK |
  VM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK |
  VM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK |
  VM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK |
  VM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK;

 switch (state) {
 case 129:
  for (j = 0; j < adev->num_vmhubs; j++) {
   hub = &adev->vmhub[j];
   for (i = 0; i < 16; i++) {
    reg = hub->vm_context0_cntl + i;
    tmp = RREG32(reg);
    tmp &= ~bits;
    WREG32(reg, tmp);
   }
  }
  break;
 case 128:
  for (j = 0; j < adev->num_vmhubs; j++) {
   hub = &adev->vmhub[j];
   for (i = 0; i < 16; i++) {
    reg = hub->vm_context0_cntl + i;
    tmp = RREG32(reg);
    tmp |= bits;
    WREG32(reg, tmp);
   }
  }
 default:
  break;
 }

 return 0;
}
