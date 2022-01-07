
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn_vmid_page_table_config {int page_table_start_addr; int page_table_end_addr; int page_table_base_addr; int block_size; int depth; } ;
struct dcn_hubbub_virt_addr_config {int page_table_start_addr; int page_table_end_addr; int page_table_base_addr; int page_table_block_size; int page_table_depth; } ;
struct dcn20_hubbub {int * vmid; } ;


 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;
 int dcn20_vmid_setup (int *,struct dcn_vmid_page_table_config*) ;
 int page_table_block_size_to_hw (int ) ;
 int page_table_depth_to_hw (int ) ;

void hubbub2_init_vm_ctx(struct hubbub *hubbub,
  struct dcn_hubbub_virt_addr_config *va_config,
  int vmid)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);
 struct dcn_vmid_page_table_config virt_config;

 virt_config.page_table_start_addr = va_config->page_table_start_addr >> 12;
 virt_config.page_table_end_addr = va_config->page_table_end_addr >> 12;
 virt_config.depth = page_table_depth_to_hw(va_config->page_table_depth);
 virt_config.block_size = page_table_block_size_to_hw(va_config->page_table_block_size);
 virt_config.page_table_base_addr = va_config->page_table_base_addr;

 dcn20_vmid_setup(&hubbub1->vmid[vmid], &virt_config);
}
