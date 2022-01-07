
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idma64 {int all_chan_mask; } ;


 int BLOCK ;
 int CFG ;
 int DST_TRAN ;
 int ERROR ;
 int IDMA64_CFG_DMA_EN ;
 int MASK (int ) ;
 int SRC_TRAN ;
 int XFER ;
 int channel_clear_bit (struct idma64*,int ,int ) ;
 int cpu_relax () ;
 int dma_readl (struct idma64*,int ) ;
 int dma_writel (struct idma64*,int ,int ) ;

__attribute__((used)) static void idma64_off(struct idma64 *idma64)
{
 unsigned short count = 100;

 dma_writel(idma64, CFG, 0);

 channel_clear_bit(idma64, MASK(XFER), idma64->all_chan_mask);
 channel_clear_bit(idma64, MASK(BLOCK), idma64->all_chan_mask);
 channel_clear_bit(idma64, MASK(SRC_TRAN), idma64->all_chan_mask);
 channel_clear_bit(idma64, MASK(DST_TRAN), idma64->all_chan_mask);
 channel_clear_bit(idma64, MASK(ERROR), idma64->all_chan_mask);

 do {
  cpu_relax();
 } while (dma_readl(idma64, CFG) & IDMA64_CFG_DMA_EN && --count);
}
