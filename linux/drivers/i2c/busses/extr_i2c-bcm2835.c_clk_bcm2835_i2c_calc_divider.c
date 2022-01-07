
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BCM2835_I2C_CDIV_MAX ;
 int BCM2835_I2C_CDIV_MIN ;
 int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EINVAL ;

__attribute__((used)) static int clk_bcm2835_i2c_calc_divider(unsigned long rate,
    unsigned long parent_rate)
{
 u32 divider = DIV_ROUND_UP(parent_rate, rate);






 if (divider & 1)
  divider++;
 if ((divider < BCM2835_I2C_CDIV_MIN) ||
     (divider > BCM2835_I2C_CDIV_MAX))
  return -EINVAL;

 return divider;
}
