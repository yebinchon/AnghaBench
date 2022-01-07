
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int dwork; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

__attribute__((used)) static irqreturn_t synaptics_i2c_irq(int irq, void *dev_id)
{
 struct synaptics_i2c *touch = dev_id;

 mod_delayed_work(system_wq, &touch->dwork, 0);

 return IRQ_HANDLED;
}
