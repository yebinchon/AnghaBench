
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dmac_chan {int address_align_mask; } ;
typedef int dma_addr_t ;



__attribute__((used)) static bool axi_dmac_check_addr(struct axi_dmac_chan *chan, dma_addr_t addr)
{
 if ((addr & chan->address_align_mask) != 0)
  return 0;
 return 1;
}
