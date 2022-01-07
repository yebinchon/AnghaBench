
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sch_gpio {scalar_t__ iobase; } ;


 int BIT (unsigned short) ;
 int inb (scalar_t__) ;
 unsigned short sch_gpio_bit (struct sch_gpio*,unsigned int) ;
 unsigned short sch_gpio_offset (struct sch_gpio*,unsigned int,unsigned int) ;

__attribute__((used)) static int sch_gpio_reg_get(struct sch_gpio *sch, unsigned gpio, unsigned reg)
{
 unsigned short offset, bit;
 u8 reg_val;

 offset = sch_gpio_offset(sch, gpio, reg);
 bit = sch_gpio_bit(sch, gpio);

 reg_val = !!(inb(sch->iobase + offset) & BIT(bit));

 return reg_val;
}
