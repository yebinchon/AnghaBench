
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct em_i2c_device {scalar_t__ base; } ;


 int I2C_BIT_DFC0 ;
 int I2C_BIT_IICE0 ;
 int I2C_BIT_IICRSV ;
 int I2C_BIT_STCEN ;
 int I2C_BIT_WTIM0 ;
 scalar_t__ I2C_OFS_IICACT0 ;
 scalar_t__ I2C_OFS_IICC0 ;
 scalar_t__ I2C_OFS_IICCL0 ;
 scalar_t__ I2C_OFS_IICF0 ;
 int WARN_ON (int) ;
 struct em_i2c_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void em_i2c_reset(struct i2c_adapter *adap)
{
 struct em_i2c_device *priv = i2c_get_adapdata(adap);
 int retr;


 if (readb(priv->base + I2C_OFS_IICACT0) & I2C_BIT_IICE0) {

  writeb(0, priv->base + I2C_OFS_IICACT0);

  retr = 1000;
  while (readb(priv->base + I2C_OFS_IICACT0) == 1 && retr)
   retr--;
  WARN_ON(retr == 0);
 }


 writeb(I2C_BIT_DFC0, priv->base + I2C_OFS_IICCL0);


 writeb(I2C_BIT_STCEN | I2C_BIT_IICRSV, priv->base + I2C_OFS_IICF0);


 writeb(I2C_BIT_WTIM0, priv->base + I2C_OFS_IICC0);


 writeb(I2C_BIT_IICE0, priv->base + I2C_OFS_IICACT0);

 retr = 1000;
 while (readb(priv->base + I2C_OFS_IICACT0) == 0 && retr)
  retr--;
 WARN_ON(retr == 0);
}
