
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7768_state {int dummy; } ;
typedef enum ad7768_conv_mode { ____Placeholder_ad7768_conv_mode } ad7768_conv_mode ;


 int AD7768_CONV_MODE (int) ;
 int AD7768_CONV_MODE_MSK ;
 int AD7768_REG_CONVERSION ;
 int ad7768_spi_reg_read (struct ad7768_state*,int ,int) ;
 int ad7768_spi_reg_write (struct ad7768_state*,int ,int) ;

__attribute__((used)) static int ad7768_set_mode(struct ad7768_state *st,
      enum ad7768_conv_mode mode)
{
 int regval;

 regval = ad7768_spi_reg_read(st, AD7768_REG_CONVERSION, 1);
 if (regval < 0)
  return regval;

 regval &= ~AD7768_CONV_MODE_MSK;
 regval |= AD7768_CONV_MODE(mode);

 return ad7768_spi_reg_write(st, AD7768_REG_CONVERSION, regval);
}
