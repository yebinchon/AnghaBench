
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int PAGE_MASK ;
 int RADEON_GART_PAGE_READ ;
 int RADEON_GART_PAGE_SNOOP ;
 int RADEON_GART_PAGE_WRITE ;
 int RS400_PTE_READABLE ;
 int RS400_PTE_UNSNOOPED ;
 int RS400_PTE_WRITEABLE ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

uint64_t rs400_gart_get_page_entry(uint64_t addr, uint32_t flags)
{
 uint32_t entry;

 entry = (lower_32_bits(addr) & PAGE_MASK) |
  ((upper_32_bits(addr) & 0xff) << 4);
 if (flags & RADEON_GART_PAGE_READ)
  entry |= RS400_PTE_READABLE;
 if (flags & RADEON_GART_PAGE_WRITE)
  entry |= RS400_PTE_WRITEABLE;
 if (!(flags & RADEON_GART_PAGE_SNOOP))
  entry |= RS400_PTE_UNSNOOPED;
 return entry;
}
