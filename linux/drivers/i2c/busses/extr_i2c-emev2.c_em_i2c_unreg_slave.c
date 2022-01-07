
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int adapter; } ;
struct em_i2c_device {int * slave; int irq; scalar_t__ base; } ;


 scalar_t__ I2C_OFS_SVA0 ;
 int WARN_ON (int) ;
 struct em_i2c_device* i2c_get_adapdata (int ) ;
 int synchronize_irq (int ) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int em_i2c_unreg_slave(struct i2c_client *slave)
{
 struct em_i2c_device *priv = i2c_get_adapdata(slave->adapter);

 WARN_ON(!priv->slave);

 writeb(0, priv->base + I2C_OFS_SVA0);






 synchronize_irq(priv->irq);
 priv->slave = ((void*)0);

 return 0;
}
