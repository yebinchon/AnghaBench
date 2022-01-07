
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hubbub {int dummy; } ;
struct dcn_vmid_page_table_config {int page_table_start_addr; int page_table_end_addr; scalar_t__ block_size; scalar_t__ depth; int page_table_base_addr; } ;
struct TYPE_4__ {int page_table_start_addr; int page_table_end_addr; int page_table_base_addr; } ;
struct TYPE_3__ {int fb_base; int fb_top; int fb_offset; int agp_bot; int agp_top; int agp_base; } ;
struct dcn_hubbub_phys_addr_config {int page_table_default_page_addr; TYPE_2__ gart_config; TYPE_1__ system_aperture; } ;
struct dcn20_hubbub {int * vmid; } ;


 int AGP_BASE ;
 int AGP_BOT ;
 int AGP_TOP ;
 int DCN_VM_AGP_BASE ;
 int DCN_VM_AGP_BOT ;
 int DCN_VM_AGP_TOP ;
 int DCN_VM_FB_LOCATION_BASE ;
 int DCN_VM_FB_LOCATION_TOP ;
 int DCN_VM_FB_OFFSET ;
 int DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_LSB ;
 int DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_MSB ;
 int FB_BASE ;
 int FB_OFFSET ;
 int FB_TOP ;
 int NUM_VMID ;
 int REG_SET (int ,int ,int ,int) ;
 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;
 int dcn20_vmid_setup (int *,struct dcn_vmid_page_table_config*) ;

int hubbub2_init_dchub_sys_ctx(struct hubbub *hubbub,
  struct dcn_hubbub_phys_addr_config *pa_config)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);
 struct dcn_vmid_page_table_config phys_config;

 REG_SET(DCN_VM_FB_LOCATION_BASE, 0,
   FB_BASE, pa_config->system_aperture.fb_base >> 24);
 REG_SET(DCN_VM_FB_LOCATION_TOP, 0,
   FB_TOP, pa_config->system_aperture.fb_top >> 24);
 REG_SET(DCN_VM_FB_OFFSET, 0,
   FB_OFFSET, pa_config->system_aperture.fb_offset >> 24);
 REG_SET(DCN_VM_AGP_BOT, 0,
   AGP_BOT, pa_config->system_aperture.agp_bot >> 24);
 REG_SET(DCN_VM_AGP_TOP, 0,
   AGP_TOP, pa_config->system_aperture.agp_top >> 24);
 REG_SET(DCN_VM_AGP_BASE, 0,
   AGP_BASE, pa_config->system_aperture.agp_base >> 24);

 REG_SET(DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_MSB, 0,
   DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_MSB, (pa_config->page_table_default_page_addr >> 44) & 0xF);
 REG_SET(DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_LSB, 0,
   DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_LSB, (pa_config->page_table_default_page_addr >> 12) & 0xFFFFFFFF);

 if (pa_config->gart_config.page_table_start_addr != pa_config->gart_config.page_table_end_addr) {
  phys_config.page_table_start_addr = pa_config->gart_config.page_table_start_addr >> 12;
  phys_config.page_table_end_addr = pa_config->gart_config.page_table_end_addr >> 12;
  phys_config.page_table_base_addr = pa_config->gart_config.page_table_base_addr;
  phys_config.depth = 0;
  phys_config.block_size = 0;

  dcn20_vmid_setup(&hubbub1->vmid[0], &phys_config);
 }

 return NUM_VMID;
}
