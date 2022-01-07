
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_queue_inst {int proxy_id; int queue_id; int irq; int name; } ;
struct ti_msgmgr_desc {scalar_t__ is_sproxy; } ;
struct mbox_chan {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
typedef int of_rx_irq_name ;


 int ENODATA ;
 int IRQF_SHARED ;
 int dev_err (struct device*,char*,int,int,...) ;
 int of_irq_get_byname (struct device_node*,char*) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 int request_irq (int,int ,int ,int ,struct mbox_chan*) ;
 int snprintf (char*,int,char*,int) ;
 int ti_msgmgr_queue_rx_interrupt ;

__attribute__((used)) static int ti_msgmgr_queue_rx_irq_req(struct device *dev,
          const struct ti_msgmgr_desc *d,
          struct ti_queue_inst *qinst,
          struct mbox_chan *chan)
{
 int ret = 0;
 char of_rx_irq_name[7];
 struct device_node *np;

 snprintf(of_rx_irq_name, sizeof(of_rx_irq_name),
   "rx_%03d", d->is_sproxy ? qinst->proxy_id : qinst->queue_id);


 if (qinst->irq < 0) {
  np = of_node_get(dev->of_node);
  if (!np)
   return -ENODATA;
  qinst->irq = of_irq_get_byname(np, of_rx_irq_name);
  of_node_put(np);

  if (qinst->irq < 0) {
   dev_err(dev,
    "QID %d PID %d:No IRQ[%s]: %d\n",
    qinst->queue_id, qinst->proxy_id,
    of_rx_irq_name, qinst->irq);
   return qinst->irq;
  }
 }


 ret = request_irq(qinst->irq, ti_msgmgr_queue_rx_interrupt,
     IRQF_SHARED, qinst->name, chan);
 if (ret) {
  dev_err(dev, "Unable to get IRQ %d on %s(res=%d)\n",
   qinst->irq, qinst->name, ret);
 }

 return ret;
}
