
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int REG_GPIODATAIN1 ;
 int gpio_twl4030_read (int) ;

__attribute__((used)) static int twl4030_get_gpio_datain(int gpio)
{
 u8 d_bnk = gpio >> 3;
 u8 d_off = gpio & 0x7;
 u8 base = 0;
 int ret = 0;

 base = REG_GPIODATAIN1 + d_bnk;
 ret = gpio_twl4030_read(base);
 if (ret > 0)
  ret = (ret >> d_off) & 0x1;

 return ret;
}
