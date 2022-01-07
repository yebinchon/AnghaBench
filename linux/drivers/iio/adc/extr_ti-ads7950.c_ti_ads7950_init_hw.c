
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ads7950_state {int gpio_cmd_settings_bitmask; int slock; int scan_single_msg; int spi; int single_tx; int cmd_settings_bitmask; } ;


 int TI_ADS7950_CR_RANGE_5V ;
 int TI_ADS7950_GPIO_CMD_SETTINGS (struct ti_ads7950_state*) ;
 int TI_ADS7950_MAN_CMD_SETTINGS (struct ti_ads7950_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ti_ads7950_init_hw(struct ti_ads7950_state *st)
{
 int ret = 0;

 mutex_lock(&st->slock);



 st->cmd_settings_bitmask = TI_ADS7950_CR_RANGE_5V;
 st->single_tx = TI_ADS7950_MAN_CMD_SETTINGS(st);
 ret = spi_sync(st->spi, &st->scan_single_msg);
 if (ret)
  goto out;


 st->gpio_cmd_settings_bitmask = 0x0;
 st->single_tx = TI_ADS7950_GPIO_CMD_SETTINGS(st);
 ret = spi_sync(st->spi, &st->scan_single_msg);

out:
 mutex_unlock(&st->slock);

 return ret;
}
