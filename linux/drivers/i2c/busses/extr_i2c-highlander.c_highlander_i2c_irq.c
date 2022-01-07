
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct highlander_i2c_dev {int cmd_complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int highlander_i2c_done (struct highlander_i2c_dev*) ;

__attribute__((used)) static irqreturn_t highlander_i2c_irq(int irq, void *dev_id)
{
 struct highlander_i2c_dev *dev = dev_id;

 highlander_i2c_done(dev);
 complete(&dev->cmd_complete);

 return IRQ_HANDLED;
}
