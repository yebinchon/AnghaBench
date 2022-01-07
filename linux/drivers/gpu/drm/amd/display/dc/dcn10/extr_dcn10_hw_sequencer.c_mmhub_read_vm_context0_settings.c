
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_9__ {int quad_part; scalar_t__ low_part; scalar_t__ high_part; } ;
struct TYPE_8__ {scalar_t__ low_part; scalar_t__ high_part; } ;
struct TYPE_7__ {scalar_t__ low_part; scalar_t__ high_part; } ;
struct TYPE_6__ {scalar_t__ low_part; scalar_t__ high_part; } ;
struct vm_context0_param {TYPE_4__ pte_base; TYPE_3__ fault_default; TYPE_2__ pte_end; TYPE_1__ pte_start; } ;
struct dcn10_hubp {int dummy; } ;
struct dce_hwseq {int dummy; } ;
struct TYPE_10__ {int quad_part; } ;
typedef TYPE_5__ PHYSICAL_ADDRESS_LOC ;


 int DCHUBBUB_SDPIF_FB_BASE ;
 int DCHUBBUB_SDPIF_FB_OFFSET ;
 int LOGICAL_PAGE_NUMBER_HI4 ;
 int LOGICAL_PAGE_NUMBER_LO32 ;
 int PAGE_DIRECTORY_ENTRY_HI32 ;
 int PAGE_DIRECTORY_ENTRY_LO32 ;
 int PHYSICAL_PAGE_ADDR_HI4 ;
 int PHYSICAL_PAGE_ADDR_LO32 ;
 int REG_GET (int ,int ,scalar_t__*) ;
 int SDPIF_FB_BASE ;
 int SDPIF_FB_OFFSET ;
 int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ;
 int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ;
 int VM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 ;
 int VM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 ;
 int VM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 ;
 int VM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 ;
 int VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 ;
 int VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 ;

__attribute__((used)) static void mmhub_read_vm_context0_settings(struct dcn10_hubp *hubp1,
  struct vm_context0_param *vm0,
  struct dce_hwseq *hws)
{
 PHYSICAL_ADDRESS_LOC fb_base;
 PHYSICAL_ADDRESS_LOC fb_offset;
 uint32_t fb_base_value;
 uint32_t fb_offset_value;

 REG_GET(DCHUBBUB_SDPIF_FB_BASE, SDPIF_FB_BASE, &fb_base_value);
 REG_GET(DCHUBBUB_SDPIF_FB_OFFSET, SDPIF_FB_OFFSET, &fb_offset_value);

 REG_GET(VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32,
   PAGE_DIRECTORY_ENTRY_HI32, &vm0->pte_base.high_part);
 REG_GET(VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32,
   PAGE_DIRECTORY_ENTRY_LO32, &vm0->pte_base.low_part);

 REG_GET(VM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32,
   LOGICAL_PAGE_NUMBER_HI4, &vm0->pte_start.high_part);
 REG_GET(VM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32,
   LOGICAL_PAGE_NUMBER_LO32, &vm0->pte_start.low_part);

 REG_GET(VM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32,
   LOGICAL_PAGE_NUMBER_HI4, &vm0->pte_end.high_part);
 REG_GET(VM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32,
   LOGICAL_PAGE_NUMBER_LO32, &vm0->pte_end.low_part);

 REG_GET(VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32,
   PHYSICAL_PAGE_ADDR_HI4, &vm0->fault_default.high_part);
 REG_GET(VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32,
   PHYSICAL_PAGE_ADDR_LO32, &vm0->fault_default.low_part);







 fb_base.quad_part = (uint64_t)fb_base_value << 24;
 fb_offset.quad_part = (uint64_t)fb_offset_value << 24;
 vm0->pte_base.quad_part += fb_base.quad_part;
 vm0->pte_base.quad_part -= fb_offset.quad_part;
}
