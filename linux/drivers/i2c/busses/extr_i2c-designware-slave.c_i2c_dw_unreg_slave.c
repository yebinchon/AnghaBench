
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int adapter; } ;
struct dw_i2c_dev {int dev; int * slave; int irq; int (* disable ) (struct dw_i2c_dev*) ;int (* disable_int ) (struct dw_i2c_dev*) ;} ;


 struct dw_i2c_dev* i2c_get_adapdata (int ) ;
 int pm_runtime_put (int ) ;
 int stub1 (struct dw_i2c_dev*) ;
 int stub2 (struct dw_i2c_dev*) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int i2c_dw_unreg_slave(struct i2c_client *slave)
{
 struct dw_i2c_dev *dev = i2c_get_adapdata(slave->adapter);

 dev->disable_int(dev);
 dev->disable(dev);
 synchronize_irq(dev->irq);
 dev->slave = ((void*)0);
 pm_runtime_put(dev->dev);

 return 0;
}
