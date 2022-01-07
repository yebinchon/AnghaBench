
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_i2c_dev {int bus_freq; scalar_t__ base; int clk_rate; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 int OWL_I2C_DIV_FACTOR (unsigned int) ;
 scalar_t__ OWL_I2C_REG_CLKDIV ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void owl_i2c_set_freq(struct owl_i2c_dev *i2c_dev)
{
 unsigned int val;

 val = DIV_ROUND_UP(i2c_dev->clk_rate, i2c_dev->bus_freq * 16);


 writel(OWL_I2C_DIV_FACTOR(val), i2c_dev->base + OWL_I2C_REG_CLKDIV);
}
