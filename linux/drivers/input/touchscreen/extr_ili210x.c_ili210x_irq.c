
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili210x {int dwork; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t ili210x_irq(int irq, void *irq_data)
{
 struct ili210x *priv = irq_data;

 schedule_delayed_work(&priv->dwork, 0);

 return IRQ_HANDLED;
}
