
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int MMHUB ;
 int MMHUB_INSTANCE_REGISTER_OFFSET ;
 int WREG32_SOC15_OFFSET (int ,int ,int,int,int ) ;
 int lower_32_bits (int ) ;
 int mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ;
 int mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ;
 int mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_BASE_ADDR_LO32 ;
 int upper_32_bits (int ) ;

void mmhub_v9_4_setup_vm_pt_regs(struct amdgpu_device *adev, int hubid,
    uint32_t vmid, uint64_t value)
{



 int dist = mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_BASE_ADDR_LO32
   - mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32;

 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32,
       dist * vmid + hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       lower_32_bits(value));

 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32,
       dist * vmid + hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       upper_32_bits(value));

}
