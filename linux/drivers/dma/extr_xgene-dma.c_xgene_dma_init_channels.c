
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {int id; int name; struct xgene_dma* pdma; int dev; } ;
struct xgene_dma {int dev; struct xgene_dma_chan* chan; int ring_num; } ;


 int XGENE_DMA_MAX_CHANNEL ;
 int XGENE_DMA_RING_NUM ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static void xgene_dma_init_channels(struct xgene_dma *pdma)
{
 struct xgene_dma_chan *chan;
 int i;

 pdma->ring_num = XGENE_DMA_RING_NUM;

 for (i = 0; i < XGENE_DMA_MAX_CHANNEL; i++) {
  chan = &pdma->chan[i];
  chan->dev = pdma->dev;
  chan->pdma = pdma;
  chan->id = i;
  snprintf(chan->name, sizeof(chan->name), "dmachan%d", chan->id);
 }
}
