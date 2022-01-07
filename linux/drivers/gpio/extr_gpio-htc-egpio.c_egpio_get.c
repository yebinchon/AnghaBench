
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; } ;
struct egpio_info {int bus_shift; int base_addr; } ;
struct egpio_chip {int reg_start; int cached_values; int is_out; int dev; } ;


 struct egpio_info* dev_get_drvdata (int ) ;
 unsigned int egpio_bit (struct egpio_info*,unsigned int) ;
 int egpio_pos (struct egpio_info*,unsigned int) ;
 int egpio_readw (struct egpio_info*,int) ;
 struct egpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int pr_debug (char*,int ,...) ;
 scalar_t__ test_bit (unsigned int,int *) ;

__attribute__((used)) static int egpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct egpio_chip *egpio;
 struct egpio_info *ei;
 unsigned bit;
 int reg;
 int value;

 pr_debug("egpio_get_value(%d)\n", chip->base + offset);

 egpio = gpiochip_get_data(chip);
 ei = dev_get_drvdata(egpio->dev);
 bit = egpio_bit(ei, offset);
 reg = egpio->reg_start + egpio_pos(ei, offset);

 if (test_bit(offset, &egpio->is_out)) {
  return !!(egpio->cached_values & (1 << offset));
 } else {
  value = egpio_readw(ei, reg);
  pr_debug("readw(%p + %x) = %x\n",
    ei->base_addr, reg << ei->bus_shift, value);
  return !!(value & bit);
 }
}
