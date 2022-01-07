
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn_vmid_page_table_config {int page_table_start_addr; int page_table_end_addr; int page_table_base_addr; int block_size; int depth; } ;
struct dcn20_vmid {int dummy; } ;


 int CNTL ;
 int PAGE_TABLE_BASE_ADDR_HI32 ;
 int PAGE_TABLE_BASE_ADDR_LO32 ;
 int PAGE_TABLE_END_ADDR_HI32 ;
 int PAGE_TABLE_END_ADDR_LO32 ;
 int PAGE_TABLE_START_ADDR_HI32 ;
 int PAGE_TABLE_START_ADDR_LO32 ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_HI4 ;
 int VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_LO32 ;
 int VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_HI32 ;
 int VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_LO32 ;
 int VM_CONTEXT0_PAGE_TABLE_BLOCK_SIZE ;
 int VM_CONTEXT0_PAGE_TABLE_DEPTH ;
 int VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_HI4 ;
 int VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_LO32 ;
 int dcn20_wait_for_vmid_ready (struct dcn20_vmid*) ;

void dcn20_vmid_setup(struct dcn20_vmid *vmid, const struct dcn_vmid_page_table_config *config)
{
 REG_SET(PAGE_TABLE_START_ADDR_HI32, 0,
   VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_HI4, (config->page_table_start_addr >> 32) & 0xF);
 REG_SET(PAGE_TABLE_START_ADDR_LO32, 0,
   VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_LO32, config->page_table_start_addr & 0xFFFFFFFF);

 REG_SET(PAGE_TABLE_END_ADDR_HI32, 0,
   VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_HI4, (config->page_table_end_addr >> 32) & 0xF);
 REG_SET(PAGE_TABLE_END_ADDR_LO32, 0,
   VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_LO32, config->page_table_end_addr & 0xFFFFFFFF);

 REG_SET_2(CNTL, 0,
   VM_CONTEXT0_PAGE_TABLE_DEPTH, config->depth,
   VM_CONTEXT0_PAGE_TABLE_BLOCK_SIZE, config->block_size);

 REG_SET(PAGE_TABLE_BASE_ADDR_HI32, 0,
   VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_HI32, (config->page_table_base_addr >> 32) & 0xFFFFFFFF);

 REG_SET(PAGE_TABLE_BASE_ADDR_LO32, 0,
   VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_LO32, config->page_table_base_addr & 0xFFFFFFFF);

 dcn20_wait_for_vmid_ready(vmid);
}
