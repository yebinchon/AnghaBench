
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int psp_irq_data; int (* psp_irq_handler ) (int,int ) ;int ccp_irq_data; int (* ccp_irq_handler ) (int,int ) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

__attribute__((used)) static irqreturn_t sp_irq_handler(int irq, void *data)
{
 struct sp_device *sp = data;

 if (sp->ccp_irq_handler)
  sp->ccp_irq_handler(irq, sp->ccp_irq_data);

 if (sp->psp_irq_handler)
  sp->psp_irq_handler(irq, sp->psp_irq_data);

 return IRQ_HANDLED;
}
