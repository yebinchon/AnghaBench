
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct device_node {int dummy; } ;
struct davinci_i2c_platform_data {int bus_freq; } ;
struct davinci_i2c_dev {TYPE_1__* dev; int clk; struct davinci_i2c_platform_data* pdata; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int DAVINCI_I2C_CLKH_REG ;
 int DAVINCI_I2C_CLKL_REG ;
 int DAVINCI_I2C_PSC_REG ;
 int clk_get_rate (int ) ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int) ;
 int dev_dbg (TYPE_1__*,char*,int,int) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static void i2c_davinci_calc_clk_dividers(struct davinci_i2c_dev *dev)
{
 struct davinci_i2c_platform_data *pdata = dev->pdata;
 u16 psc;
 u32 clk;
 u32 d;
 u32 clkh;
 u32 clkl;
 u32 input_clock = clk_get_rate(dev->clk);
 struct device_node *of_node = dev->dev->of_node;
 psc = (input_clock / 12000000) - 1;
 if ((input_clock / (psc + 1)) > 12000000)
  psc++;
 d = (psc >= 2) ? 5 : 7 - psc;

 if (of_node && of_device_is_compatible(of_node, "ti,keystone-i2c"))
  d = 6;

 clk = ((input_clock / (psc + 1)) / (pdata->bus_freq * 1000));

 if (input_clock / (psc + 1) / clk > pdata->bus_freq * 1000)
  clk++;





 if (pdata->bus_freq > 100)
  clkl = (clk << 1) / 3;
 else
  clkl = (clk >> 1);
 if (clk > clkl + d) {
  clkh = clk - clkl - d;
  clkl -= d;
 } else {
  clkh = 1;
  clkl = clk - (d << 1);
 }

 davinci_i2c_write_reg(dev, DAVINCI_I2C_PSC_REG, psc);
 davinci_i2c_write_reg(dev, DAVINCI_I2C_CLKH_REG, clkh);
 davinci_i2c_write_reg(dev, DAVINCI_I2C_CLKL_REG, clkl);

 dev_dbg(dev->dev, "input_clock = %d, CLK = %d\n", input_clock, clk);
}
