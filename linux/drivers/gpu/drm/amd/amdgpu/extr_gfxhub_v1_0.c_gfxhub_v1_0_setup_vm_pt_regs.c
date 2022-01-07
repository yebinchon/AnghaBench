
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int WREG32_SOC15_OFFSET (int ,int ,int,int,int ) ;
 int lower_32_bits (int ) ;
 int mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ;
 int mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ;
 int mmVM_CONTEXT1_PAGE_TABLE_BASE_ADDR_LO32 ;
 int upper_32_bits (int ) ;

void gfxhub_v1_0_setup_vm_pt_regs(struct amdgpu_device *adev, uint32_t vmid,
    uint64_t page_table_base)
{

 int offset = mmVM_CONTEXT1_PAGE_TABLE_BASE_ADDR_LO32
   - mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32;

 WREG32_SOC15_OFFSET(GC, 0, mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32,
    offset * vmid, lower_32_bits(page_table_base));

 WREG32_SOC15_OFFSET(GC, 0, mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32,
    offset * vmid, upper_32_bits(page_table_base));
}
