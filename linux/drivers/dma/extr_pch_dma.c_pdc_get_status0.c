
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chan_id; int device; } ;
struct pch_dma_chan {TYPE_1__ chan; } ;
struct pch_dma {int dummy; } ;


 int DMA_STATUS_BITS_PER_CH ;
 int DMA_STATUS_MASK_BITS ;
 int DMA_STATUS_SHIFT_BITS ;
 int STS0 ;
 int dma_readl (struct pch_dma*,int ) ;
 struct pch_dma* to_pd (int ) ;

__attribute__((used)) static u32 pdc_get_status0(struct pch_dma_chan *pd_chan)
{
 struct pch_dma *pd = to_pd(pd_chan->chan.device);
 u32 val;

 val = dma_readl(pd, STS0);
 return DMA_STATUS_MASK_BITS & (val >> (DMA_STATUS_SHIFT_BITS +
   DMA_STATUS_BITS_PER_CH * pd_chan->chan.chan_id));
}
