
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;

__attribute__((used)) static irqreturn_t malidp_se_irq_thread_handler(int irq, void *arg)
{
 return IRQ_HANDLED;
}
