
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct idma64_desc {scalar_t__ status; int vdesc; } ;
struct TYPE_2__ {int lock; } ;
struct idma64_chan {TYPE_1__ vchan; struct idma64_desc* desc; int mask; } ;
struct idma64 {struct idma64_chan* chan; } ;


 int CLEAR (int ) ;
 scalar_t__ DMA_COMPLETE ;
 scalar_t__ DMA_ERROR ;
 int ERROR ;
 int XFER ;
 int dma_writel (struct idma64*,int ,int ) ;
 int idma64_start_transfer (struct idma64_chan*) ;
 int idma64_stop_transfer (struct idma64_chan*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchan_cookie_complete (int *) ;

__attribute__((used)) static void idma64_chan_irq(struct idma64 *idma64, unsigned short c,
  u32 status_err, u32 status_xfer)
{
 struct idma64_chan *idma64c = &idma64->chan[c];
 struct idma64_desc *desc;

 spin_lock(&idma64c->vchan.lock);
 desc = idma64c->desc;
 if (desc) {
  if (status_err & (1 << c)) {
   dma_writel(idma64, CLEAR(ERROR), idma64c->mask);
   desc->status = DMA_ERROR;
  } else if (status_xfer & (1 << c)) {
   dma_writel(idma64, CLEAR(XFER), idma64c->mask);
   desc->status = DMA_COMPLETE;
   vchan_cookie_complete(&desc->vdesc);
   idma64_start_transfer(idma64c);
  }


  if (idma64c->desc == ((void*)0) || desc->status == DMA_ERROR)
   idma64_stop_transfer(idma64c);
 }
 spin_unlock(&idma64c->vchan.lock);
}
