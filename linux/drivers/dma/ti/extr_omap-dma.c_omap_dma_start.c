
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct omap_dmadev {scalar_t__ ll123_supported; TYPE_3__* plat; } ;
struct omap_desc {int cicr; scalar_t__ dir; int ccr; TYPE_4__* sg; scalar_t__ using_ll; } ;
struct TYPE_5__ {int device; } ;
struct TYPE_6__ {TYPE_1__ chan; } ;
struct omap_chan {int running; TYPE_2__ vc; } ;
struct TYPE_8__ {int t2_desc_paddr; } ;
struct TYPE_7__ {int dma_attr; } ;


 int CCDN ;
 int CCEN ;
 int CCFN ;
 int CCR ;
 int CCR_ENABLE ;
 int CDAC ;
 int CDP ;
 int CDP_DST_VALID_RELOAD ;
 int CDP_DST_VALID_REUSE ;
 int CDP_FAST ;
 int CDP_NTYPE_TYPE2 ;
 int CDP_SRC_VALID_RELOAD ;
 int CDP_SRC_VALID_REUSE ;
 int CDP_TMODE_LLIST ;
 int CICR ;
 int CICR_BLOCK_IE ;
 int CNDP ;
 int CPC ;
 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ __dma_omap15xx (int ) ;
 int omap_dma_chan_write (struct omap_chan*,int ,int) ;
 int omap_dma_clear_csr (struct omap_chan*) ;
 struct omap_dmadev* to_omap_dma_dev (int ) ;

__attribute__((used)) static void omap_dma_start(struct omap_chan *c, struct omap_desc *d)
{
 struct omap_dmadev *od = to_omap_dma_dev(c->vc.chan.device);
 uint16_t cicr = d->cicr;

 if (__dma_omap15xx(od->plat->dma_attr))
  omap_dma_chan_write(c, CPC, 0);
 else
  omap_dma_chan_write(c, CDAC, 0);

 omap_dma_clear_csr(c);

 if (d->using_ll) {
  uint32_t cdp = CDP_TMODE_LLIST | CDP_NTYPE_TYPE2 | CDP_FAST;

  if (d->dir == DMA_DEV_TO_MEM)
   cdp |= (CDP_DST_VALID_RELOAD | CDP_SRC_VALID_REUSE);
  else
   cdp |= (CDP_DST_VALID_REUSE | CDP_SRC_VALID_RELOAD);
  omap_dma_chan_write(c, CDP, cdp);

  omap_dma_chan_write(c, CNDP, d->sg[0].t2_desc_paddr);
  omap_dma_chan_write(c, CCDN, 0);
  omap_dma_chan_write(c, CCFN, 0xffff);
  omap_dma_chan_write(c, CCEN, 0xffffff);

  cicr &= ~CICR_BLOCK_IE;
 } else if (od->ll123_supported) {
  omap_dma_chan_write(c, CDP, 0);
 }


 omap_dma_chan_write(c, CICR, cicr);


 omap_dma_chan_write(c, CCR, d->ccr | CCR_ENABLE);

 c->running = 1;
}
