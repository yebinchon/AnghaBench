
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ads7950_state {int gpio_cmd_settings_bitmask; int cmd_settings_bitmask; int single_rx; int slock; int scan_single_msg; int spi; void* single_tx; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int TI_ADS7950_CR_GPIO_DATA ;
 void* TI_ADS7950_MAN_CMD_SETTINGS (struct ti_ads7950_state*) ;
 struct ti_ads7950_state* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ti_ads7950_get(struct gpio_chip *chip, unsigned int offset)
{
 struct ti_ads7950_state *st = gpiochip_get_data(chip);
 int ret;

 mutex_lock(&st->slock);


 if (st->gpio_cmd_settings_bitmask & BIT(offset)) {
  ret = st->cmd_settings_bitmask & BIT(offset);
  goto out;
 }


 st->cmd_settings_bitmask |= TI_ADS7950_CR_GPIO_DATA;
 st->single_tx = TI_ADS7950_MAN_CMD_SETTINGS(st);
 ret = spi_sync(st->spi, &st->scan_single_msg);
 if (ret)
  goto out;

 ret = ((st->single_rx >> 12) & BIT(offset)) ? 1 : 0;


 st->cmd_settings_bitmask &= ~TI_ADS7950_CR_GPIO_DATA;
 st->single_tx = TI_ADS7950_MAN_CMD_SETTINGS(st);
 ret = spi_sync(st->spi, &st->scan_single_msg);
 if (ret)
  goto out;

out:
 mutex_unlock(&st->slock);

 return ret;
}
