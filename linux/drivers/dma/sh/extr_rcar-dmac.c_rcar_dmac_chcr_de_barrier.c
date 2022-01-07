
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct rcar_dmac_chan {TYPE_2__ chan; } ;
struct TYPE_3__ {int dev; } ;


 int RCAR_DMACHCR ;
 int RCAR_DMACHCR_DE ;
 int dev_err (int ,char*) ;
 int rcar_dmac_chan_read (struct rcar_dmac_chan*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void rcar_dmac_chcr_de_barrier(struct rcar_dmac_chan *chan)
{
 u32 chcr;
 unsigned int i;





 for (i = 0; i < 1024; i++) {
  chcr = rcar_dmac_chan_read(chan, RCAR_DMACHCR);
  if (!(chcr & RCAR_DMACHCR_DE))
   return;
  udelay(1);
 }

 dev_err(chan->chan.device->dev, "CHCR DE check error\n");
}
