
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoctal {int * channel; scalar_t__ int_space; } ;
typedef int irqreturn_t ;


 scalar_t__ ACK_INT_REQ0 ;
 scalar_t__ ACK_INT_REQ1 ;
 int IRQ_HANDLED ;
 unsigned int NR_CHANNELS ;
 int ipoctal_irq_channel (int *) ;
 int readw (scalar_t__) ;

__attribute__((used)) static irqreturn_t ipoctal_irq_handler(void *arg)
{
 unsigned int i;
 struct ipoctal *ipoctal = (struct ipoctal *) arg;


 readw(ipoctal->int_space + ACK_INT_REQ0);
 readw(ipoctal->int_space + ACK_INT_REQ1);


 for (i = 0; i < NR_CHANNELS; i++)
  ipoctal_irq_channel(&ipoctal->channel[i]);

 return IRQ_HANDLED;
}
