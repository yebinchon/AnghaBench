
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13783_ts_priv {int work; int mc13xxx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mc13xxx_irq_ack (int ,int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t mc13783_ts_handler(int irq, void *data)
{
 struct mc13783_ts_priv *priv = data;

 mc13xxx_irq_ack(priv->mc13xxx, irq);







 schedule_delayed_work(&priv->work, 0);

 return IRQ_HANDLED;
}
