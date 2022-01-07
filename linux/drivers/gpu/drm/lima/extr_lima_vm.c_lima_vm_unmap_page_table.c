
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct lima_vm {TYPE_1__* bts; } ;
struct TYPE_2__ {scalar_t__* cpu; } ;


 scalar_t__ LIMA_BTE (scalar_t__) ;
 scalar_t__ LIMA_PAGE_SIZE ;
 scalar_t__ LIMA_PBE (scalar_t__) ;

__attribute__((used)) static void lima_vm_unmap_page_table(struct lima_vm *vm, u32 start, u32 end)
{
 u32 addr;

 for (addr = start; addr <= end; addr += LIMA_PAGE_SIZE) {
  u32 pbe = LIMA_PBE(addr);
  u32 bte = LIMA_BTE(addr);

  vm->bts[pbe].cpu[bte] = 0;
 }
}
