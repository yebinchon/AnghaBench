
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef size_t dma_addr_t ;


 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;

uint64_t amdgpu_vm_map_gart(const dma_addr_t *pages_addr, uint64_t addr)
{
 uint64_t result;


 result = pages_addr[addr >> PAGE_SHIFT];


 result |= addr & (~PAGE_MASK);

 result &= 0xFFFFFFFFFFFFF000ULL;

 return result;
}
