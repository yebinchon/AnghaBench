
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vadc_priv {int complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t vadc_isr(int irq, void *dev_id)
{
 struct vadc_priv *vadc = dev_id;

 complete(&vadc->complete);

 return IRQ_HANDLED;
}
