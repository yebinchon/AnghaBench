
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_info {struct tegra_gpio_bank* bank_info; } ;
struct tegra_gpio_bank {unsigned int* dbc_cnt; int * dbc_lock; } ;
struct gpio_chip {int dummy; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 size_t GPIO_BANK (unsigned int) ;
 int GPIO_DBC_CNT (struct tegra_gpio_info*,unsigned int) ;
 int GPIO_MSK_DBC_EN (struct tegra_gpio_info*,unsigned int) ;
 unsigned int GPIO_PORT (unsigned int) ;
 struct tegra_gpio_info* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int min (unsigned int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_gpio_mask_write (struct tegra_gpio_info*,int ,unsigned int,int) ;
 int tegra_gpio_writel (struct tegra_gpio_info*,unsigned int,int ) ;

__attribute__((used)) static int tegra_gpio_set_debounce(struct gpio_chip *chip, unsigned int offset,
       unsigned int debounce)
{
 struct tegra_gpio_info *tgi = gpiochip_get_data(chip);
 struct tegra_gpio_bank *bank = &tgi->bank_info[GPIO_BANK(offset)];
 unsigned int debounce_ms = DIV_ROUND_UP(debounce, 1000);
 unsigned long flags;
 unsigned int port;

 if (!debounce_ms) {
  tegra_gpio_mask_write(tgi, GPIO_MSK_DBC_EN(tgi, offset),
          offset, 0);
  return 0;
 }

 debounce_ms = min(debounce_ms, 255U);
 port = GPIO_PORT(offset);




 spin_lock_irqsave(&bank->dbc_lock[port], flags);
 if (bank->dbc_cnt[port] < debounce_ms) {
  tegra_gpio_writel(tgi, debounce_ms, GPIO_DBC_CNT(tgi, offset));
  bank->dbc_cnt[port] = debounce_ms;
 }
 spin_unlock_irqrestore(&bank->dbc_lock[port], flags);

 tegra_gpio_mask_write(tgi, GPIO_MSK_DBC_EN(tgi, offset), offset, 1);

 return 0;
}
