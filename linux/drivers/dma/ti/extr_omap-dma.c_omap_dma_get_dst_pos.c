
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_dmadev {TYPE_3__* plat; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct omap_chan {TYPE_2__ vc; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dma_attr; } ;


 int CDAC ;
 int CDSA ;
 int CPC ;
 scalar_t__ __dma_omap15xx (int ) ;
 scalar_t__ dma_omap1 () ;
 int omap_dma_chan_read (struct omap_chan*,int ) ;
 int omap_dma_chan_read_3_3 (struct omap_chan*,int ) ;
 struct omap_dmadev* to_omap_dma_dev (int ) ;

__attribute__((used)) static dma_addr_t omap_dma_get_dst_pos(struct omap_chan *c)
{
 struct omap_dmadev *od = to_omap_dma_dev(c->vc.chan.device);
 dma_addr_t addr;

 if (__dma_omap15xx(od->plat->dma_attr)) {
  addr = omap_dma_chan_read(c, CPC);
 } else {
  addr = omap_dma_chan_read_3_3(c, CDAC);







  if (addr == 0)
   addr = omap_dma_chan_read(c, CDSA);
 }

 if (dma_omap1())
  addr |= omap_dma_chan_read(c, CDSA) & 0xffff0000;

 return addr;
}
