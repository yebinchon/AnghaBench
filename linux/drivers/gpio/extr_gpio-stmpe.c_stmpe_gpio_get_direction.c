
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe_gpio {struct stmpe* stmpe; } ;
struct stmpe {int* regs; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 size_t STMPE_IDX_GPDR_LSB ;
 struct stmpe_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int stmpe_reg_read (struct stmpe*,int) ;

__attribute__((used)) static int stmpe_gpio_get_direction(struct gpio_chip *chip,
        unsigned offset)
{
 struct stmpe_gpio *stmpe_gpio = gpiochip_get_data(chip);
 struct stmpe *stmpe = stmpe_gpio->stmpe;
 u8 reg = stmpe->regs[STMPE_IDX_GPDR_LSB] - (offset / 8);
 u8 mask = BIT(offset % 8);
 int ret;

 ret = stmpe_reg_read(stmpe, reg);
 if (ret < 0)
  return ret;

 return !(ret & mask);
}
