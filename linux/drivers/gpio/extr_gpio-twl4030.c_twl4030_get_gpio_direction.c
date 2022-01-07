
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;
 int REG_GPIODATADIR1 ;
 int gpio_twl4030_read (int) ;

__attribute__((used)) static int twl4030_get_gpio_direction(int gpio)
{
 u8 d_bnk = gpio >> 3;
 u8 d_msk = BIT(gpio & 0x7);
 u8 base = REG_GPIODATADIR1 + d_bnk;
 int ret = 0;

 ret = gpio_twl4030_read(base);
 if (ret < 0)
  return ret;


 ret = !(ret & d_msk);

 return ret;
}
