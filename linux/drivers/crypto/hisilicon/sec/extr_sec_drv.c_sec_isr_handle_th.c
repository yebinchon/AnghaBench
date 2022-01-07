
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int sec_queue_irq_disable (void*) ;

__attribute__((used)) static irqreturn_t sec_isr_handle_th(int irq, void *q)
{
 sec_queue_irq_disable(q);
 return IRQ_WAKE_THREAD;
}
