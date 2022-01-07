
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GPIO_BIT_CFG ;

__attribute__((used)) static unsigned int bit_cfg_reg(unsigned int line)
{
 return 8 * line + GPIO_BIT_CFG;
}
