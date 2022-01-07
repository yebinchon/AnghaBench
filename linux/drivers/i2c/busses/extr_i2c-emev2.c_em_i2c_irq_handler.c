
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_i2c_device {int msg_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 scalar_t__ em_i2c_slave_irq (struct em_i2c_device*) ;

__attribute__((used)) static irqreturn_t em_i2c_irq_handler(int this_irq, void *dev_id)
{
 struct em_i2c_device *priv = dev_id;

 if (em_i2c_slave_irq(priv))
  return IRQ_HANDLED;

 complete(&priv->msg_done);

 return IRQ_HANDLED;
}
