
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

void efa_com_set_dma_addr(dma_addr_t addr, u32 *addr_high, u32 *addr_low)
{
 *addr_low = lower_32_bits(addr);
 *addr_high = upper_32_bits(addr);
}
