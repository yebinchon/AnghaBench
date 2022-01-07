
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_i2c {int clk; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct meson_i2c* algo_data; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int meson_i2c_xfer_msg (struct meson_i2c*,struct i2c_msg*,int) ;

__attribute__((used)) static int meson_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
     int num)
{
 struct meson_i2c *i2c = adap->algo_data;
 int i, ret = 0;

 clk_enable(i2c->clk);

 for (i = 0; i < num; i++) {
  ret = meson_i2c_xfer_msg(i2c, msgs + i, i == num - 1);
  if (ret)
   break;
 }

 clk_disable(i2c->clk);

 return ret ?: i;
}
