
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int R300_PTE_READABLE ;
 int R300_PTE_UNSNOOPED ;
 int R300_PTE_WRITEABLE ;
 int RADEON_GART_PAGE_READ ;
 int RADEON_GART_PAGE_SNOOP ;
 int RADEON_GART_PAGE_WRITE ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

uint64_t rv370_pcie_gart_get_page_entry(uint64_t addr, uint32_t flags)
{
 addr = (lower_32_bits(addr) >> 8) |
  ((upper_32_bits(addr) & 0xff) << 24);
 if (flags & RADEON_GART_PAGE_READ)
  addr |= R300_PTE_READABLE;
 if (flags & RADEON_GART_PAGE_WRITE)
  addr |= R300_PTE_WRITEABLE;
 if (!(flags & RADEON_GART_PAGE_SNOOP))
  addr |= R300_PTE_UNSNOOPED;
 return addr;
}
