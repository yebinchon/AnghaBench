
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sg {int fn; int en; int fi; int ei; int addr; } ;
struct omap_desc {scalar_t__ dir; struct omap_sg* sg; } ;
struct omap_chan {int sgidx; } ;


 unsigned int CDEI ;
 unsigned int CDFI ;
 unsigned int CDSA ;
 unsigned int CEN ;
 unsigned int CFN ;
 unsigned int CSEI ;
 unsigned int CSFI ;
 unsigned int CSSA ;
 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_MEM ;
 int omap_dma_chan_write (struct omap_chan*,unsigned int,int ) ;
 int omap_dma_start (struct omap_chan*,struct omap_desc*) ;

__attribute__((used)) static void omap_dma_start_sg(struct omap_chan *c, struct omap_desc *d)
{
 struct omap_sg *sg = d->sg + c->sgidx;
 unsigned cxsa, cxei, cxfi;

 if (d->dir == DMA_DEV_TO_MEM || d->dir == DMA_MEM_TO_MEM) {
  cxsa = CDSA;
  cxei = CDEI;
  cxfi = CDFI;
 } else {
  cxsa = CSSA;
  cxei = CSEI;
  cxfi = CSFI;
 }

 omap_dma_chan_write(c, cxsa, sg->addr);
 omap_dma_chan_write(c, cxei, sg->ei);
 omap_dma_chan_write(c, cxfi, sg->fi);
 omap_dma_chan_write(c, CEN, sg->en);
 omap_dma_chan_write(c, CFN, sg->fn);

 omap_dma_start(c, d);
 c->sgidx++;
}
