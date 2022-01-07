
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_i2c {unsigned long i2c_clk; } ;


 unsigned int CDNS_I2C_CR_DIVA_MASK ;
 unsigned int CDNS_I2C_CR_DIVA_SHIFT ;
 unsigned int CDNS_I2C_CR_DIVB_MASK ;
 unsigned int CDNS_I2C_CR_DIVB_SHIFT ;
 int CDNS_I2C_CR_OFFSET ;
 int cdns_i2c_calc_divs (unsigned long*,unsigned long,unsigned int*,unsigned int*) ;
 unsigned int cdns_i2c_readreg (int ) ;
 int cdns_i2c_writereg (unsigned int,int ) ;

__attribute__((used)) static int cdns_i2c_setclk(unsigned long clk_in, struct cdns_i2c *id)
{
 unsigned int div_a, div_b;
 unsigned int ctrl_reg;
 int ret = 0;
 unsigned long fscl = id->i2c_clk;

 ret = cdns_i2c_calc_divs(&fscl, clk_in, &div_a, &div_b);
 if (ret)
  return ret;

 ctrl_reg = cdns_i2c_readreg(CDNS_I2C_CR_OFFSET);
 ctrl_reg &= ~(CDNS_I2C_CR_DIVA_MASK | CDNS_I2C_CR_DIVB_MASK);
 ctrl_reg |= ((div_a << CDNS_I2C_CR_DIVA_SHIFT) |
   (div_b << CDNS_I2C_CR_DIVB_SHIFT));
 cdns_i2c_writereg(ctrl_reg, CDNS_I2C_CR_OFFSET);

 return 0;
}
