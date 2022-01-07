
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs5535_gpio_chip {int base; } ;


 unsigned int GPIO_NEGATIVE_EDGE_STS ;
 unsigned int GPIO_POSITIVE_EDGE_STS ;
 int inl (unsigned long) ;
 int outl (int,unsigned long) ;

__attribute__((used)) static void errata_outl(struct cs5535_gpio_chip *chip, u32 val,
  unsigned int reg)
{
 unsigned long addr = chip->base + 0x80 + reg;
 if (reg != GPIO_POSITIVE_EDGE_STS && reg != GPIO_NEGATIVE_EDGE_STS) {
  if (val & 0xffff)
   val |= (inl(addr) & 0xffff);
  else
   val |= (inl(addr) ^ (val >> 16));
 }
 outl(val, addr);
}
