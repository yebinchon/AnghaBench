
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_i2c_platform_data {int bus_delay; int bus_freq; } ;
struct davinci_i2c_dev {int dev; struct davinci_i2c_platform_data* pdata; } ;


 int DAVINCI_I2C_CLKH_REG ;
 int DAVINCI_I2C_CLKL_REG ;
 int DAVINCI_I2C_IMR_REG ;
 int DAVINCI_I2C_OAR_REG ;
 int DAVINCI_I2C_OWN_ADDRESS ;
 int DAVINCI_I2C_PSC_REG ;
 int I2C_DAVINCI_INTR_ALL ;
 int davinci_i2c_read_reg (struct davinci_i2c_dev*,int ) ;
 int davinci_i2c_reset_ctrl (struct davinci_i2c_dev*,int) ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int ) ;
 int dev_dbg (int ,char*,int ,...) ;
 int i2c_davinci_calc_clk_dividers (struct davinci_i2c_dev*) ;

__attribute__((used)) static int i2c_davinci_init(struct davinci_i2c_dev *dev)
{
 struct davinci_i2c_platform_data *pdata = dev->pdata;


 davinci_i2c_reset_ctrl(dev, 0);


 i2c_davinci_calc_clk_dividers(dev);




 davinci_i2c_write_reg(dev, DAVINCI_I2C_OAR_REG, DAVINCI_I2C_OWN_ADDRESS);

 dev_dbg(dev->dev, "PSC  = %d\n",
  davinci_i2c_read_reg(dev, DAVINCI_I2C_PSC_REG));
 dev_dbg(dev->dev, "CLKL = %d\n",
  davinci_i2c_read_reg(dev, DAVINCI_I2C_CLKL_REG));
 dev_dbg(dev->dev, "CLKH = %d\n",
  davinci_i2c_read_reg(dev, DAVINCI_I2C_CLKH_REG));
 dev_dbg(dev->dev, "bus_freq = %dkHz, bus_delay = %d\n",
  pdata->bus_freq, pdata->bus_delay);



 davinci_i2c_reset_ctrl(dev, 1);


 davinci_i2c_write_reg(dev, DAVINCI_I2C_IMR_REG, I2C_DAVINCI_INTR_ALL);

 return 0;
}
