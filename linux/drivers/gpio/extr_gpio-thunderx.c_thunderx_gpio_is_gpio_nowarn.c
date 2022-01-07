
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thunderx_gpio {scalar_t__ register_base; } ;


 int GPIO_BIT_CFG_PIN_SEL_MASK ;
 scalar_t__ bit_cfg_reg (unsigned int) ;
 int readq (scalar_t__) ;

__attribute__((used)) static bool thunderx_gpio_is_gpio_nowarn(struct thunderx_gpio *txgpio,
      unsigned int line)
{
 u64 bit_cfg = readq(txgpio->register_base + bit_cfg_reg(line));

 return (bit_cfg & GPIO_BIT_CFG_PIN_SEL_MASK) == 0;
}
