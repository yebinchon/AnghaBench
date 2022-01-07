
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxart_chan {scalar_t__ base; } ;
typedef int dma_addr_t ;


 scalar_t__ REG_OFF_ADDRESS_DEST ;
 scalar_t__ REG_OFF_ADDRESS_SOURCE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void moxart_dma_set_params(struct moxart_chan *ch, dma_addr_t src_addr,
      dma_addr_t dst_addr)
{
 writel(src_addr, ch->base + REG_OFF_ADDRESS_SOURCE);
 writel(dst_addr, ch->base + REG_OFF_ADDRESS_DEST);
}
