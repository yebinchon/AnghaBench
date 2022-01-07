
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct crystalcove_gpio {int regmap; } ;


 unsigned int BIT (int) ;
 int CRYSTALCOVE_GPIO_NUM ;
 unsigned int CTLI_INTCNT_NE ;
 unsigned int CTLI_INTCNT_PE ;
 unsigned int CTLO_DIR_OUT ;
 int CTRL_IN ;
 int CTRL_OUT ;
 int GPIO0IRQ ;
 int GPIO1IRQ ;
 int MGPIO0IRQS0 ;
 int MGPIO0IRQSX ;
 int MGPIO1IRQS0 ;
 int MGPIO1IRQSX ;
 struct crystalcove_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int seq_printf (struct seq_file*,char*,int,char*,char*,char*,char*,unsigned int,char*,char*,char*) ;
 int to_reg (int,int ) ;

__attribute__((used)) static void crystalcove_gpio_dbg_show(struct seq_file *s,
          struct gpio_chip *chip)
{
 struct crystalcove_gpio *cg = gpiochip_get_data(chip);
 int gpio, offset;
 unsigned int ctlo, ctli, mirqs0, mirqsx, irq;

 for (gpio = 0; gpio < CRYSTALCOVE_GPIO_NUM; gpio++) {
  regmap_read(cg->regmap, to_reg(gpio, CTRL_OUT), &ctlo);
  regmap_read(cg->regmap, to_reg(gpio, CTRL_IN), &ctli);
  regmap_read(cg->regmap, gpio < 8 ? MGPIO0IRQS0 : MGPIO1IRQS0,
       &mirqs0);
  regmap_read(cg->regmap, gpio < 8 ? MGPIO0IRQSX : MGPIO1IRQSX,
       &mirqsx);
  regmap_read(cg->regmap, gpio < 8 ? GPIO0IRQ : GPIO1IRQ,
       &irq);

  offset = gpio % 8;
  seq_printf(s, " gpio-%-2d %s %s %s %s ctlo=%2x,%s %s %s\n",
      gpio, ctlo & CTLO_DIR_OUT ? "out" : "in ",
      ctli & 0x1 ? "hi" : "lo",
      ctli & CTLI_INTCNT_NE ? "fall" : "    ",
      ctli & CTLI_INTCNT_PE ? "rise" : "    ",
      ctlo,
      mirqs0 & BIT(offset) ? "s0 mask  " : "s0 unmask",
      mirqsx & BIT(offset) ? "sx mask  " : "sx unmask",
      irq & BIT(offset) ? "pending" : "       ");
 }
}
