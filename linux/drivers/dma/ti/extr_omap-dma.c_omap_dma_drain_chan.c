
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;
struct omap_chan {int dma_ch; TYPE_3__ vc; } ;
struct TYPE_4__ {int dev; } ;


 int CCR ;
 int CCR_RD_ACTIVE ;
 int CCR_WR_ACTIVE ;
 int dev_err (int ,char*,int ) ;
 int omap_dma_chan_read (struct omap_chan*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void omap_dma_drain_chan(struct omap_chan *c)
{
 int i;
 u32 val;


 for (i = 0; ; i++) {
  val = omap_dma_chan_read(c, CCR);
  if (!(val & (CCR_RD_ACTIVE | CCR_WR_ACTIVE)))
   break;

  if (i > 100)
   break;

  udelay(5);
 }

 if (val & (CCR_RD_ACTIVE | CCR_WR_ACTIVE))
  dev_err(c->vc.chan.device->dev,
   "DMA drain did not complete on lch %d\n",
   c->dma_ch);
}
