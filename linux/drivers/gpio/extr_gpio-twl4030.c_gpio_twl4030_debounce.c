
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int REG_GPIO_DEBEN1 ;
 int TWL4030_MODULE_GPIO ;
 int twl_i2c_write (int ,int*,int ,int) ;

__attribute__((used)) static int gpio_twl4030_debounce(u32 debounce, u8 mmc_cd)
{
 u8 message[3];




 message[0] = (debounce & 0xff) | (mmc_cd & 0x03);
 debounce >>= 8;
 message[1] = (debounce & 0xff);
 debounce >>= 8;
 message[2] = (debounce & 0x03);

 return twl_i2c_write(TWL4030_MODULE_GPIO, message,
    REG_GPIO_DEBEN1, 3);
}
