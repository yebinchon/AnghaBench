
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int R600_PTE_READABLE ;
 int R600_PTE_SNOOPED ;
 int R600_PTE_SYSTEM ;
 int R600_PTE_VALID ;
 int R600_PTE_WRITEABLE ;
 int RADEON_VM_PAGE_READABLE ;
 int RADEON_VM_PAGE_SNOOPED ;
 int RADEON_VM_PAGE_SYSTEM ;
 int RADEON_VM_PAGE_VALID ;
 int RADEON_VM_PAGE_WRITEABLE ;

__attribute__((used)) static uint32_t radeon_vm_page_flags(uint32_t flags)
{
 uint32_t hw_flags = 0;

 hw_flags |= (flags & RADEON_VM_PAGE_VALID) ? R600_PTE_VALID : 0;
 hw_flags |= (flags & RADEON_VM_PAGE_READABLE) ? R600_PTE_READABLE : 0;
 hw_flags |= (flags & RADEON_VM_PAGE_WRITEABLE) ? R600_PTE_WRITEABLE : 0;
 if (flags & RADEON_VM_PAGE_SYSTEM) {
  hw_flags |= R600_PTE_SYSTEM;
  hw_flags |= (flags & RADEON_VM_PAGE_SNOOPED) ? R600_PTE_SNOOPED : 0;
 }
 return hw_flags;
}
