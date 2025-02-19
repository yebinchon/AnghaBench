
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp9xx_i2c_dev {int dummy; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 struct xlp9xx_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int xlp9xx_i2c_check_bus_status (struct xlp9xx_i2c_dev*) ;
 int xlp9xx_i2c_init (struct xlp9xx_i2c_dev*) ;
 int xlp9xx_i2c_xfer_msg (struct xlp9xx_i2c_dev*,struct i2c_msg*,int) ;

__attribute__((used)) static int xlp9xx_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
      int num)
{
 int i, ret;
 struct xlp9xx_i2c_dev *priv = i2c_get_adapdata(adap);

 ret = xlp9xx_i2c_check_bus_status(priv);
 if (ret) {
  xlp9xx_i2c_init(priv);
  ret = xlp9xx_i2c_check_bus_status(priv);
  if (ret)
   return ret;
 }

 for (i = 0; i < num; i++) {
  ret = xlp9xx_i2c_xfer_msg(priv, &msgs[i], i == num - 1);
  if (ret != 0)
   return ret;
 }

 return num;
}
