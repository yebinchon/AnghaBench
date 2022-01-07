
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct davinci_i2c_dev {int dummy; } ;


 int DAVINCI_I2C_DIN_PDIN0 ;
 int DAVINCI_I2C_DIN_REG ;
 int davinci_i2c_read_reg (struct davinci_i2c_dev*,int ) ;
 struct davinci_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int davinci_i2c_get_scl(struct i2c_adapter *adap)
{
 struct davinci_i2c_dev *dev = i2c_get_adapdata(adap);
 int val;


 val = davinci_i2c_read_reg(dev, DAVINCI_I2C_DIN_REG);
 return val & DAVINCI_I2C_DIN_PDIN0;
}
