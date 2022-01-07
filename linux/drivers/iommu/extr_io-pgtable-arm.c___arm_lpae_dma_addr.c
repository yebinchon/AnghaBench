
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 int virt_to_phys (void*) ;

__attribute__((used)) static dma_addr_t __arm_lpae_dma_addr(void *pages)
{
 return (dma_addr_t)virt_to_phys(pages);
}
