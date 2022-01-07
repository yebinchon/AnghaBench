
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_i2c_priv {int comp; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t uniphier_i2c_interrupt(int irq, void *dev_id)
{
 struct uniphier_i2c_priv *priv = dev_id;






 complete(&priv->comp);

 return IRQ_HANDLED;
}
