
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_irq {int affinity_hint_mask; int vector; int data; int name; int handler; } ;
struct efa_dev {TYPE_1__* pdev; struct efa_irq admin_irq; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ,int *,int ) ;
 int dev_err (int *,char*,int) ;
 int irq_set_affinity_hint (int ,int *) ;
 int nr_cpumask_bits ;
 int request_irq (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int efa_request_mgmnt_irq(struct efa_dev *dev)
{
 struct efa_irq *irq;
 int err;

 irq = &dev->admin_irq;
 err = request_irq(irq->vector, irq->handler, 0, irq->name,
     irq->data);
 if (err) {
  dev_err(&dev->pdev->dev, "Failed to request admin irq (%d)\n",
   err);
  return err;
 }

 dev_dbg(&dev->pdev->dev, "Set affinity hint of mgmnt irq to %*pbl (irq vector: %d)\n",
  nr_cpumask_bits, &irq->affinity_hint_mask, irq->vector);
 irq_set_affinity_hint(irq->vector, &irq->affinity_hint_mask);

 return 0;
}
