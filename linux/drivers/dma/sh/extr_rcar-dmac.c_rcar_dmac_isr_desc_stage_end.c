
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_dmac_desc {int cyclic; } ;
struct TYPE_2__ {struct rcar_dmac_desc* running; } ;
struct rcar_dmac_chan {TYPE_1__ desc; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int RCAR_DMACHCRB ;
 unsigned int RCAR_DMACHCRB_DPTR_MASK ;
 unsigned int RCAR_DMACHCRB_DPTR_SHIFT ;
 int RCAR_DMADPCR ;
 int RCAR_DMADPCR_DIPT (unsigned int) ;
 scalar_t__ WARN_ON (int) ;
 unsigned int rcar_dmac_chan_read (struct rcar_dmac_chan*,int ) ;
 int rcar_dmac_chan_write (struct rcar_dmac_chan*,int ,int ) ;

__attribute__((used)) static irqreturn_t rcar_dmac_isr_desc_stage_end(struct rcar_dmac_chan *chan)
{
 struct rcar_dmac_desc *desc = chan->desc.running;
 unsigned int stage;

 if (WARN_ON(!desc || !desc->cyclic)) {





  return IRQ_NONE;
 }


 stage = (rcar_dmac_chan_read(chan, RCAR_DMACHCRB) &
   RCAR_DMACHCRB_DPTR_MASK) >> RCAR_DMACHCRB_DPTR_SHIFT;
 rcar_dmac_chan_write(chan, RCAR_DMADPCR, RCAR_DMADPCR_DIPT(stage));

 return IRQ_WAKE_THREAD;
}
