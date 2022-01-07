
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dcn20_vmid {int dummy; } ;


 int ASSERT (int ) ;
 int DC_LOG_WARNING (char*) ;
 int PAGE_TABLE_BASE_ADDR_LO32 ;
 int REG_GET (int ,int ,int*) ;
 int VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_LO32 ;
 int udelay (int) ;

__attribute__((used)) static void dcn20_wait_for_vmid_ready(struct dcn20_vmid *vmid)
{
 int max_times = 10000;
 int delay_us = 5;
 int i;

 for (i = 0; i < max_times; ++i) {
  uint32_t entry_lo32;

  REG_GET(PAGE_TABLE_BASE_ADDR_LO32,
   VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_LO32,
   &entry_lo32);

  if (entry_lo32 & 0x1)
   return;

  udelay(delay_us);
 }


 DC_LOG_WARNING("Timeout while waiting for GPUVM context update\n");
 ASSERT(0);
}
