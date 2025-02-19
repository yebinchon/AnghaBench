
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct omap_dmadev {TYPE_3__* plat; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct omap_chan {TYPE_2__ vc; } ;
struct TYPE_6__ {int errata; } ;


 int DMA_ERRATA_3_3 ;
 scalar_t__ omap_dma_chan_read (struct omap_chan*,unsigned int) ;
 struct omap_dmadev* to_omap_dma_dev (int ) ;

__attribute__((used)) static uint32_t omap_dma_chan_read_3_3(struct omap_chan *c, unsigned reg)
{
 struct omap_dmadev *od = to_omap_dma_dev(c->vc.chan.device);
 uint32_t val;

 val = omap_dma_chan_read(c, reg);
 if (val == 0 && od->plat->errata & DMA_ERRATA_3_3)
  val = omap_dma_chan_read(c, reg);

 return val;
}
