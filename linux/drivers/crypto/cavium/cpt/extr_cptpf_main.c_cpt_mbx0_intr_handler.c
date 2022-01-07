
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cpt_mbox_intr_handler (struct cpt_device*,int ) ;

__attribute__((used)) static irqreturn_t cpt_mbx0_intr_handler(int irq, void *cpt_irq)
{
 struct cpt_device *cpt = (struct cpt_device *)cpt_irq;

 cpt_mbox_intr_handler(cpt, 0);

 return IRQ_HANDLED;
}
