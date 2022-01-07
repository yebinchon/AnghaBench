
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;
struct ftgpio_gpio {scalar_t__ base; int dev; int clk; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int BIT (unsigned int) ;
 int DIV_ROUND_CLOSEST (unsigned long,int) ;
 int ENOTSUPP ;
 scalar_t__ GPIO_DEBOUNCE_EN ;
 scalar_t__ GPIO_DEBOUNCE_PRESCALE ;
 int PIN_CONFIG_INPUT_DEBOUNCE ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int,unsigned long) ;
 struct ftgpio_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ftgpio_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
      unsigned long config)
{
 enum pin_config_param param = pinconf_to_config_param(config);
 u32 arg = pinconf_to_config_argument(config);
 struct ftgpio_gpio *g = gpiochip_get_data(gc);
 unsigned long pclk_freq;
 u32 deb_div;
 u32 val;

 if (param != PIN_CONFIG_INPUT_DEBOUNCE)
  return -ENOTSUPP;
 pclk_freq = clk_get_rate(g->clk);
 deb_div = DIV_ROUND_CLOSEST(pclk_freq, arg);


 if (deb_div > (1 << 24))
  return -ENOTSUPP;

 dev_dbg(g->dev, "prescale divisor: %08x, resulting frequency %lu Hz\n",
  deb_div, (pclk_freq/deb_div));

 val = readl(g->base + GPIO_DEBOUNCE_PRESCALE);
 if (val == deb_div) {







  val = readl(g->base + GPIO_DEBOUNCE_EN);
  val |= BIT(offset);
  writel(val, g->base + GPIO_DEBOUNCE_EN);
  return 0;
 }

 val = readl(g->base + GPIO_DEBOUNCE_EN);
 if (val) {




  return -ENOTSUPP;
 }


 writel(deb_div, g->base + GPIO_DEBOUNCE_PRESCALE);

 val |= BIT(offset);
 writel(val, g->base + GPIO_DEBOUNCE_EN);

 return 0;
}
