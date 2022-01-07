
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct em_i2c_device {scalar_t__ base; } ;


 int EAGAIN ;
 int I2C_BIT_IICBSY ;
 scalar_t__ I2C_OFS_IICF0 ;
 int __em_i2c_xfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 struct em_i2c_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int readb (scalar_t__) ;

__attribute__((used)) static int em_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 int num)
{
 struct em_i2c_device *priv = i2c_get_adapdata(adap);
 int ret, i;

 if (readb(priv->base + I2C_OFS_IICF0) & I2C_BIT_IICBSY)
  return -EAGAIN;

 for (i = 0; i < num; i++) {
  ret = __em_i2c_xfer(adap, &msgs[i], (i == (num - 1)));
  if (ret < 0)
   return ret;
 }


 return num;
}
