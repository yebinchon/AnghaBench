
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct omap_dmadev {TYPE_3__* plat; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct omap_chan {int ccr; int running; scalar_t__ cyclic; TYPE_2__ vc; } ;
struct TYPE_6__ {int errata; int dma_attr; } ;


 int CCR ;
 int CCR_BUFFERING_DISABLE ;
 int CCR_ENABLE ;
 int CCR_TRIGGER_SRC ;
 int CICR ;
 int CLNK_CTRL ;
 int CLNK_CTRL_ENABLE_LNK ;
 int DMA_ERRATA_i541 ;
 int DMA_IDLEMODE_NO_IDLE ;
 int DMA_SYSCONFIG_MIDLEMODE (int ) ;
 int DMA_SYSCONFIG_MIDLEMODE_MASK ;
 int EINVAL ;
 int OCP_SYSCONFIG ;
 int __dma_omap15xx (int ) ;
 scalar_t__ dma_omap1 () ;
 int mb () ;
 int omap_dma_chan_read (struct omap_chan*,int ) ;
 int omap_dma_chan_write (struct omap_chan*,int ,int) ;
 int omap_dma_clear_csr (struct omap_chan*) ;
 int omap_dma_drain_chan (struct omap_chan*) ;
 int omap_dma_glbl_read (struct omap_dmadev*,int ) ;
 int omap_dma_glbl_write (struct omap_dmadev*,int ,int) ;
 struct omap_dmadev* to_omap_dma_dev (int ) ;

__attribute__((used)) static int omap_dma_stop(struct omap_chan *c)
{
 struct omap_dmadev *od = to_omap_dma_dev(c->vc.chan.device);
 uint32_t val;


 omap_dma_chan_write(c, CICR, 0);

 omap_dma_clear_csr(c);

 val = omap_dma_chan_read(c, CCR);
 if (od->plat->errata & DMA_ERRATA_i541 && val & CCR_TRIGGER_SRC) {
  uint32_t sysconfig;

  sysconfig = omap_dma_glbl_read(od, OCP_SYSCONFIG);
  val = sysconfig & ~DMA_SYSCONFIG_MIDLEMODE_MASK;
  val |= DMA_SYSCONFIG_MIDLEMODE(DMA_IDLEMODE_NO_IDLE);
  omap_dma_glbl_write(od, OCP_SYSCONFIG, val);

  val = omap_dma_chan_read(c, CCR);
  val &= ~CCR_ENABLE;
  omap_dma_chan_write(c, CCR, val);

  if (!(c->ccr & CCR_BUFFERING_DISABLE))
   omap_dma_drain_chan(c);

  omap_dma_glbl_write(od, OCP_SYSCONFIG, sysconfig);
 } else {
  if (!(val & CCR_ENABLE))
   return -EINVAL;

  val &= ~CCR_ENABLE;
  omap_dma_chan_write(c, CCR, val);

  if (!(c->ccr & CCR_BUFFERING_DISABLE))
   omap_dma_drain_chan(c);
 }

 mb();

 if (!__dma_omap15xx(od->plat->dma_attr) && c->cyclic) {
  val = omap_dma_chan_read(c, CLNK_CTRL);

  if (dma_omap1())
   val |= 1 << 14;
  else
   val &= ~CLNK_CTRL_ENABLE_LNK;

  omap_dma_chan_write(c, CLNK_CTRL, val);
 }
 c->running = 0;
 return 0;
}
