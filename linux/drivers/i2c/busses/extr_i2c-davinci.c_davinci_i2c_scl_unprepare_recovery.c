
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct davinci_i2c_dev {int dummy; } ;


 int DAVINCI_I2C_FUNC_REG ;
 int davinci_i2c_unprepare_recovery (struct i2c_adapter*) ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int ) ;
 struct davinci_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static void davinci_i2c_scl_unprepare_recovery(struct i2c_adapter *adap)
{
 struct davinci_i2c_dev *dev = i2c_get_adapdata(adap);


 davinci_i2c_write_reg(dev, DAVINCI_I2C_FUNC_REG, 0);

 davinci_i2c_unprepare_recovery(adap);
}
