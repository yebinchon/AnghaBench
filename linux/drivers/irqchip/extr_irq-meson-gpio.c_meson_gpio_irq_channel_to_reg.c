
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int REG_PIN_03_SEL ;
 unsigned int REG_PIN_47_SEL ;

__attribute__((used)) static unsigned int meson_gpio_irq_channel_to_reg(unsigned int channel)
{
 return (channel < 4) ? REG_PIN_03_SEL : REG_PIN_47_SEL;
}
