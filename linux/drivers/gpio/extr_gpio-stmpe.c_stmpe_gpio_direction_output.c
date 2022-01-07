
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe_gpio {struct stmpe* stmpe; } ;
struct stmpe {int * regs; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 unsigned int STMPE_IDX_GPDR_LSB ;
 struct stmpe_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int stmpe_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int stmpe_set_bits (struct stmpe*,int ,int ,int ) ;

__attribute__((used)) static int stmpe_gpio_direction_output(struct gpio_chip *chip,
      unsigned offset, int val)
{
 struct stmpe_gpio *stmpe_gpio = gpiochip_get_data(chip);
 struct stmpe *stmpe = stmpe_gpio->stmpe;
 u8 reg = stmpe->regs[STMPE_IDX_GPDR_LSB + (offset / 8)];
 u8 mask = BIT(offset % 8);

 stmpe_gpio_set(chip, offset, val);

 return stmpe_set_bits(stmpe, reg, mask, mask);
}
