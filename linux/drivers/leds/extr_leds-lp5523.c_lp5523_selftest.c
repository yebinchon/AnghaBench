
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct lp55xx_platform_data {scalar_t__ clock_mode; TYPE_1__* led_config; } ;
struct lp55xx_led {int led_current; struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int lock; struct lp55xx_platform_data* pdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int led_current; } ;


 scalar_t__ LP5523_ADC_SHORTCIRC_LIM ;
 int LP5523_EN_LEDTEST ;
 scalar_t__ LP5523_EXT_CLK_USED ;
 scalar_t__ LP5523_LEDTEST_DONE ;
 int LP5523_MAX_LEDS ;
 scalar_t__ LP5523_REG_LED_CURRENT_BASE ;
 scalar_t__ LP5523_REG_LED_PWM_BASE ;
 int LP5523_REG_LED_TEST_ADC ;
 scalar_t__ LP5523_REG_LED_TEST_CTRL ;
 int LP5523_REG_STATUS ;
 scalar_t__ LP55XX_CLOCK_EXT ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int lp55xx_read (struct lp55xx_chip*,int ,scalar_t__*) ;
 int lp55xx_write (struct lp55xx_chip*,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,...) ;
 int to_i2c_client (struct device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static ssize_t lp5523_selftest(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 struct lp55xx_platform_data *pdata = chip->pdata;
 int i, ret, pos = 0;
 u8 status, adc, vdd;

 mutex_lock(&chip->lock);

 ret = lp55xx_read(chip, LP5523_REG_STATUS, &status);
 if (ret < 0)
  goto fail;


 if (pdata->clock_mode == LP55XX_CLOCK_EXT) {
  if ((status & LP5523_EXT_CLK_USED) == 0)
   goto fail;
 }


 lp55xx_write(chip, LP5523_REG_LED_TEST_CTRL, LP5523_EN_LEDTEST | 16);
 usleep_range(3000, 6000);
 ret = lp55xx_read(chip, LP5523_REG_STATUS, &status);
 if (ret < 0)
  goto fail;

 if (!(status & LP5523_LEDTEST_DONE))
  usleep_range(3000, 6000);

 ret = lp55xx_read(chip, LP5523_REG_LED_TEST_ADC, &vdd);
 if (ret < 0)
  goto fail;

 vdd--;

 for (i = 0; i < LP5523_MAX_LEDS; i++) {

  if (pdata->led_config[i].led_current == 0)
   continue;


  lp55xx_write(chip, LP5523_REG_LED_CURRENT_BASE + i,
   pdata->led_config[i].led_current);

  lp55xx_write(chip, LP5523_REG_LED_PWM_BASE + i, 0xff);

  usleep_range(2000, 4000);
  lp55xx_write(chip, LP5523_REG_LED_TEST_CTRL,
        LP5523_EN_LEDTEST | i);

  usleep_range(3000, 6000);
  ret = lp55xx_read(chip, LP5523_REG_STATUS, &status);
  if (ret < 0)
   goto fail;

  if (!(status & LP5523_LEDTEST_DONE))
   usleep_range(3000, 6000);

  ret = lp55xx_read(chip, LP5523_REG_LED_TEST_ADC, &adc);
  if (ret < 0)
   goto fail;

  if (adc >= vdd || adc < LP5523_ADC_SHORTCIRC_LIM)
   pos += sprintf(buf + pos, "LED %d FAIL\n", i);

  lp55xx_write(chip, LP5523_REG_LED_PWM_BASE + i, 0x00);


  lp55xx_write(chip, LP5523_REG_LED_CURRENT_BASE + i,
   led->led_current);
  led++;
 }
 if (pos == 0)
  pos = sprintf(buf, "OK\n");
 goto release_lock;
fail:
 pos = sprintf(buf, "FAIL\n");

release_lock:
 mutex_unlock(&chip->lock);

 return pos;
}
