
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_device {int irq_tasklet; scalar_t__ use_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ccp_disable_queue_interrupts (struct ccp_device*) ;
 int ccp_irq_bh (unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t ccp_irq_handler(int irq, void *data)
{
 struct ccp_device *ccp = (struct ccp_device *)data;

 ccp_disable_queue_interrupts(ccp);
 if (ccp->use_tasklet)
  tasklet_schedule(&ccp->irq_tasklet);
 else
  ccp_irq_bh((unsigned long)ccp);

 return IRQ_HANDLED;
}
