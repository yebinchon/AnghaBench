
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int cmd_complete; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int complete (int *) ;
 int i2c_dw_irq_handler_slave (struct dw_i2c_dev*) ;
 int i2c_dw_read_clear_intrbits_slave (struct dw_i2c_dev*) ;

__attribute__((used)) static irqreturn_t i2c_dw_isr_slave(int this_irq, void *dev_id)
{
 struct dw_i2c_dev *dev = dev_id;
 int ret;

 i2c_dw_read_clear_intrbits_slave(dev);
 ret = i2c_dw_irq_handler_slave(dev);
 if (ret > 0)
  complete(&dev->cmd_complete);

 return IRQ_RETVAL(ret);
}
