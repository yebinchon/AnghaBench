
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32f4_i2c_dev {int clk; int dev; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*) ;
 struct stm32f4_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int stm32f4_i2c_xfer_msg (struct stm32f4_i2c_dev*,struct i2c_msg*,int,int) ;

__attribute__((used)) static int stm32f4_i2c_xfer(struct i2c_adapter *i2c_adap, struct i2c_msg msgs[],
       int num)
{
 struct stm32f4_i2c_dev *i2c_dev = i2c_get_adapdata(i2c_adap);
 int ret, i;

 ret = clk_enable(i2c_dev->clk);
 if (ret) {
  dev_err(i2c_dev->dev, "Failed to enable clock\n");
  return ret;
 }

 for (i = 0; i < num && !ret; i++)
  ret = stm32f4_i2c_xfer_msg(i2c_dev, &msgs[i], i == 0,
        i == num - 1);

 clk_disable(i2c_dev->clk);

 return (ret < 0) ? ret : num;
}
