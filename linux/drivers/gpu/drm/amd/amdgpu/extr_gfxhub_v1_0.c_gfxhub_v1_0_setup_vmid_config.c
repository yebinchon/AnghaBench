
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {unsigned int num_level; unsigned int block_size; scalar_t__ max_pfn; } ;
struct TYPE_3__ {scalar_t__ translate_further; } ;
struct amdgpu_device {TYPE_2__ vm_manager; TYPE_1__ gmc; } ;


 int DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int ENABLE_CONTEXT ;
 int EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int GC ;
 int PAGE_TABLE_BLOCK_SIZE ;
 int PAGE_TABLE_DEPTH ;
 int PDE0_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int RANGE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int READ_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RETRY_PERMISSION_OR_INVALID_PAGE_FAULT ;
 int RREG32_SOC15_OFFSET (int ,int ,int ,int) ;
 int VALID_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int VM_CONTEXT1_CNTL ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int ) ;
 int WRITE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int amdgpu_noretry ;
 int lower_32_bits (scalar_t__) ;
 int mmVM_CONTEXT1_CNTL ;
 int mmVM_CONTEXT1_PAGE_TABLE_END_ADDR_HI32 ;
 int mmVM_CONTEXT1_PAGE_TABLE_END_ADDR_LO32 ;
 int mmVM_CONTEXT1_PAGE_TABLE_START_ADDR_HI32 ;
 int mmVM_CONTEXT1_PAGE_TABLE_START_ADDR_LO32 ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void gfxhub_v1_0_setup_vmid_config(struct amdgpu_device *adev)
{
 unsigned num_level, block_size;
 uint32_t tmp;
 int i;

 num_level = adev->vm_manager.num_level;
 block_size = adev->vm_manager.block_size;
 if (adev->gmc.translate_further)
  num_level -= 1;
 else
  block_size -= 9;

 for (i = 0; i <= 14; i++) {
  tmp = RREG32_SOC15_OFFSET(GC, 0, mmVM_CONTEXT1_CNTL, i);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL, ENABLE_CONTEXT, 1);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL, PAGE_TABLE_DEPTH,
        num_level);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, 1);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT,
        1);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, 1);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        VALID_PROTECTION_FAULT_ENABLE_DEFAULT, 1);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        READ_PROTECTION_FAULT_ENABLE_DEFAULT, 1);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, 1);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, 1);
  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        PAGE_TABLE_BLOCK_SIZE,
        block_size);

  tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
        RETRY_PERMISSION_OR_INVALID_PAGE_FAULT,
        !amdgpu_noretry);
  WREG32_SOC15_OFFSET(GC, 0, mmVM_CONTEXT1_CNTL, i, tmp);
  WREG32_SOC15_OFFSET(GC, 0, mmVM_CONTEXT1_PAGE_TABLE_START_ADDR_LO32, i*2, 0);
  WREG32_SOC15_OFFSET(GC, 0, mmVM_CONTEXT1_PAGE_TABLE_START_ADDR_HI32, i*2, 0);
  WREG32_SOC15_OFFSET(GC, 0, mmVM_CONTEXT1_PAGE_TABLE_END_ADDR_LO32, i*2,
   lower_32_bits(adev->vm_manager.max_pfn - 1));
  WREG32_SOC15_OFFSET(GC, 0, mmVM_CONTEXT1_PAGE_TABLE_END_ADDR_HI32, i*2,
   upper_32_bits(adev->vm_manager.max_pfn - 1));
 }
}
