
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_data {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ssp_irq_msg (struct ssp_data*) ;

__attribute__((used)) static irqreturn_t ssp_irq_thread_fn(int irq, void *dev_id)
{
 struct ssp_data *data = dev_id;





 ssp_irq_msg(data);

 return IRQ_HANDLED;
}
