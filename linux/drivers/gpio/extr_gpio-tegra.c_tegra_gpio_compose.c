
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int tegra_gpio_compose(unsigned int bank, unsigned int port,
           unsigned int bit)
{
 return (bank << 5) | ((port & 0x3) << 3) | (bit & 0x7);
}
