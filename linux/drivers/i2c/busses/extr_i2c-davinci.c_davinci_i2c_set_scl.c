
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct davinci_i2c_dev {int dummy; } ;


 int DAVINCI_I2C_DCLR_PDCLR0 ;
 int DAVINCI_I2C_DCLR_REG ;
 int DAVINCI_I2C_DSET_PDSET0 ;
 int DAVINCI_I2C_DSET_REG ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int ) ;
 struct davinci_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static void davinci_i2c_set_scl(struct i2c_adapter *adap, int val)
{
 struct davinci_i2c_dev *dev = i2c_get_adapdata(adap);

 if (val)
  davinci_i2c_write_reg(dev, DAVINCI_I2C_DSET_REG,
          DAVINCI_I2C_DSET_PDSET0);
 else
  davinci_i2c_write_reg(dev, DAVINCI_I2C_DCLR_REG,
          DAVINCI_I2C_DCLR_PDCLR0);
}
