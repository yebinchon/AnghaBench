
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;



__attribute__((used)) static dma_addr_t smmu_pde_to_dma(u32 pde)
{
 return pde << 12;
}
