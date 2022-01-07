
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int flexrm_process_completions (void*) ;

__attribute__((used)) static irqreturn_t flexrm_irq_thread(int irq, void *dev_id)
{
 flexrm_process_completions(dev_id);

 return IRQ_HANDLED;
}
