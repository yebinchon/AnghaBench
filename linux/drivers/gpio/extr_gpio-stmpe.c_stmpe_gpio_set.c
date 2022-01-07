
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe_gpio {struct stmpe* stmpe; } ;
struct stmpe {int * regs; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 size_t STMPE_IDX_GPCR_LSB ;
 size_t STMPE_IDX_GPSR_LSB ;
 struct stmpe_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int stmpe_reg_write (struct stmpe*,int ,int ) ;
 int stmpe_set_bits (struct stmpe*,int ,int ,int ) ;

__attribute__((used)) static void stmpe_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
{
 struct stmpe_gpio *stmpe_gpio = gpiochip_get_data(chip);
 struct stmpe *stmpe = stmpe_gpio->stmpe;
 int which = val ? STMPE_IDX_GPSR_LSB : STMPE_IDX_GPCR_LSB;
 u8 reg = stmpe->regs[which + (offset / 8)];
 u8 mask = BIT(offset % 8);





 if (stmpe->regs[STMPE_IDX_GPSR_LSB] == stmpe->regs[STMPE_IDX_GPCR_LSB])
  stmpe_set_bits(stmpe, reg, mask, val ? mask : 0);
 else
  stmpe_reg_write(stmpe, reg, mask);
}
