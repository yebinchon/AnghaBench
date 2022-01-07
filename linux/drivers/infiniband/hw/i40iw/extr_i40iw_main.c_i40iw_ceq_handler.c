
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_ceq {int irq; int dpc_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int i40iw_pr_err (char*,int,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t i40iw_ceq_handler(int irq, void *data)
{
 struct i40iw_ceq *iwceq = (struct i40iw_ceq *)data;

 if (iwceq->irq != irq)
  i40iw_pr_err("expected irq = %d received irq = %d\n", iwceq->irq, irq);
 tasklet_schedule(&iwceq->dpc_tasklet);
 return IRQ_HANDLED;
}
