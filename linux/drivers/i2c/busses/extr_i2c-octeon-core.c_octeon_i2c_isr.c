
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int queue; int (* int_disable ) (struct octeon_i2c*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int stub1 (struct octeon_i2c*) ;
 int wake_up (int *) ;

irqreturn_t octeon_i2c_isr(int irq, void *dev_id)
{
 struct octeon_i2c *i2c = dev_id;

 i2c->int_disable(i2c);
 wake_up(&i2c->queue);

 return IRQ_HANDLED;
}
