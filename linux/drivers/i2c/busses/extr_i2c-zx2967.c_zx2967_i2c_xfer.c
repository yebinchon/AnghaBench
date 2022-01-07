
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx2967_i2c {int dummy; } ;
struct i2c_msg {int addr; } ;
struct i2c_adapter {int dummy; } ;


 struct zx2967_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int zx2967_i2c_xfer_msg (struct zx2967_i2c*,struct i2c_msg*) ;
 int zx2967_set_addr (struct zx2967_i2c*,int ) ;

__attribute__((used)) static int zx2967_i2c_xfer(struct i2c_adapter *adap,
      struct i2c_msg *msgs, int num)
{
 struct zx2967_i2c *i2c = i2c_get_adapdata(adap);
 int ret;
 int i;

 zx2967_set_addr(i2c, msgs->addr);

 for (i = 0; i < num; i++) {
  ret = zx2967_i2c_xfer_msg(i2c, &msgs[i]);
  if (ret)
   return ret;
 }

 return num;
}
