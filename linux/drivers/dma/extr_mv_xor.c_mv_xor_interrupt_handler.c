
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int irq_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int XOR_INTR_ERRORS ;
 int dev_dbg (int ,char*,int) ;
 int mv_chan_clear_eoc_cause (struct mv_xor_chan*) ;
 int mv_chan_err_interrupt_handler (struct mv_xor_chan*,int) ;
 int mv_chan_get_intr_cause (struct mv_xor_chan*) ;
 int mv_chan_to_devp (struct mv_xor_chan*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mv_xor_interrupt_handler(int irq, void *data)
{
 struct mv_xor_chan *chan = data;
 u32 intr_cause = mv_chan_get_intr_cause(chan);

 dev_dbg(mv_chan_to_devp(chan), "intr cause %x\n", intr_cause);

 if (intr_cause & XOR_INTR_ERRORS)
  mv_chan_err_interrupt_handler(chan, intr_cause);

 tasklet_schedule(&chan->irq_tasklet);

 mv_chan_clear_eoc_cause(chan);

 return IRQ_HANDLED;
}
