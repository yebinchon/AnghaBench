
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dw_i2c_dev {int rst; } ;


 int i2c_dw_disable (struct dw_i2c_dev*) ;
 int i2c_dw_prepare_clk (struct dw_i2c_dev*,int) ;
 struct dw_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void i2c_dw_prepare_recovery(struct i2c_adapter *adap)
{
 struct dw_i2c_dev *dev = i2c_get_adapdata(adap);

 i2c_dw_disable(dev);
 reset_control_assert(dev->rst);
 i2c_dw_prepare_clk(dev, 0);
}
