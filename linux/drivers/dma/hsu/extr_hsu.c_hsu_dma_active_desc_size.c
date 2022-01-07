
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsu_dma_desc {int active; int nents; TYPE_1__* sg; } ;
struct hsu_dma_chan {struct hsu_dma_desc* desc; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int HSU_CH_DxTSR (int) ;
 int HSU_DMA_CHAN_NR_DESC ;
 scalar_t__ hsu_chan_readl (struct hsu_dma_chan*,int ) ;

__attribute__((used)) static size_t hsu_dma_active_desc_size(struct hsu_dma_chan *hsuc)
{
 struct hsu_dma_desc *desc = hsuc->desc;
 size_t bytes = 0;
 int i;

 for (i = desc->active; i < desc->nents; i++)
  bytes += desc->sg[i].len;

 i = HSU_DMA_CHAN_NR_DESC - 1;
 do {
  bytes += hsu_chan_readl(hsuc, HSU_CH_DxTSR(i));
 } while (--i >= 0);

 return bytes;
}
