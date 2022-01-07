
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_queue_inst {int rx_buff; int irq; int is_tx; } ;
struct mbox_chan {struct ti_queue_inst* con_priv; } ;


 int free_irq (int ,struct mbox_chan*) ;
 int kfree (int ) ;

__attribute__((used)) static void ti_msgmgr_queue_shutdown(struct mbox_chan *chan)
{
 struct ti_queue_inst *qinst = chan->con_priv;

 if (!qinst->is_tx) {
  free_irq(qinst->irq, chan);
  kfree(qinst->rx_buff);
 }
}
