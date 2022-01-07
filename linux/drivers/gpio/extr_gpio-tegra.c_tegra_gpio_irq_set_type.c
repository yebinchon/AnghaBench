
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tegra_gpio_info {int dev; int gc; } ;
struct tegra_gpio_bank {int * lvl_lock; struct tegra_gpio_info* tgi; } ;
struct irq_data {unsigned int hwirq; } ;


 int EINVAL ;
 unsigned int GPIO_BIT (unsigned int) ;
 int GPIO_INT_LVL (struct tegra_gpio_info*,unsigned int) ;
 unsigned int GPIO_INT_LVL_EDGE_BOTH ;
 unsigned int GPIO_INT_LVL_EDGE_FALLING ;
 unsigned int GPIO_INT_LVL_EDGE_RISING ;
 unsigned int GPIO_INT_LVL_LEVEL_HIGH ;
 unsigned int GPIO_INT_LVL_LEVEL_LOW ;
 unsigned int GPIO_INT_LVL_MASK ;
 int GPIO_MSK_OE (struct tegra_gpio_info*,unsigned int) ;
 unsigned int GPIO_PORT (unsigned int) ;





 unsigned int IRQ_TYPE_SENSE_MASK ;
 int dev_err (int ,char*,unsigned int) ;
 int gpiochip_lock_as_irq (int *,unsigned int) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct tegra_gpio_bank* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_gpio_disable (struct tegra_gpio_info*,unsigned int) ;
 int tegra_gpio_enable (struct tegra_gpio_info*,unsigned int) ;
 int tegra_gpio_mask_write (struct tegra_gpio_info*,int ,unsigned int,int ) ;
 unsigned int tegra_gpio_readl (struct tegra_gpio_info*,int ) ;
 int tegra_gpio_writel (struct tegra_gpio_info*,unsigned int,int ) ;

__attribute__((used)) static int tegra_gpio_irq_set_type(struct irq_data *d, unsigned int type)
{
 unsigned int gpio = d->hwirq, port = GPIO_PORT(gpio), lvl_type;
 struct tegra_gpio_bank *bank = irq_data_get_irq_chip_data(d);
 struct tegra_gpio_info *tgi = bank->tgi;
 unsigned long flags;
 u32 val;
 int ret;

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 130:
  lvl_type = GPIO_INT_LVL_EDGE_RISING;
  break;

 case 131:
  lvl_type = GPIO_INT_LVL_EDGE_FALLING;
  break;

 case 132:
  lvl_type = GPIO_INT_LVL_EDGE_BOTH;
  break;

 case 129:
  lvl_type = GPIO_INT_LVL_LEVEL_HIGH;
  break;

 case 128:
  lvl_type = GPIO_INT_LVL_LEVEL_LOW;
  break;

 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&bank->lvl_lock[port], flags);

 val = tegra_gpio_readl(tgi, GPIO_INT_LVL(tgi, gpio));
 val &= ~(GPIO_INT_LVL_MASK << GPIO_BIT(gpio));
 val |= lvl_type << GPIO_BIT(gpio);
 tegra_gpio_writel(tgi, val, GPIO_INT_LVL(tgi, gpio));

 spin_unlock_irqrestore(&bank->lvl_lock[port], flags);

 tegra_gpio_mask_write(tgi, GPIO_MSK_OE(tgi, gpio), gpio, 0);
 tegra_gpio_enable(tgi, gpio);

 ret = gpiochip_lock_as_irq(&tgi->gc, gpio);
 if (ret) {
  dev_err(tgi->dev,
   "unable to lock Tegra GPIO %u as IRQ\n", gpio);
  tegra_gpio_disable(tgi, gpio);
  return ret;
 }

 if (type & (128 | 129))
  irq_set_handler_locked(d, handle_level_irq);
 else if (type & (131 | 130))
  irq_set_handler_locked(d, handle_edge_irq);

 return 0;
}
