
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_gpio_platform_data {int mmc_cd; } ;
struct gpio_twl4030_priv {int mutex; int usage_count; } ;
struct gpio_chip {int parent; } ;


 int BIT (unsigned int) ;
 int LEDEN_LEDAEXT ;
 int LEDEN_LEDAON ;
 int LEDEN_LEDAPWM ;
 int LEDEN_PWM_LENGTHA ;
 int MASK_GPIO_CTRL_GPIO_ON ;
 int REG_GPIO_CTRL ;
 unsigned int TWL4030_GPIO_MAX ;
 int TWL4030_LED_LEDEN_REG ;
 int TWL4030_MODULE_LED ;
 int TWL4030_PWMAON_REG ;
 int TWL4030_PWMBON_REG ;
 int cached_leden ;
 struct twl4030_gpio_platform_data* dev_get_platdata (int ) ;
 int gpio_twl4030_write (int ,int) ;
 struct gpio_twl4030_priv* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int twl_i2c_read_u8 (int ,int*,int) ;
 int twl_i2c_write_u8 (int ,int,int) ;

__attribute__((used)) static int twl_request(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_twl4030_priv *priv = gpiochip_get_data(chip);
 int status = 0;

 mutex_lock(&priv->mutex);


 if (offset >= TWL4030_GPIO_MAX) {
  u8 ledclr_mask = LEDEN_LEDAON | LEDEN_LEDAEXT
    | LEDEN_LEDAPWM | LEDEN_PWM_LENGTHA;
  u8 reg = TWL4030_PWMAON_REG;

  offset -= TWL4030_GPIO_MAX;
  if (offset) {
   ledclr_mask <<= 1;
   reg = TWL4030_PWMBON_REG;
  }



  status = twl_i2c_write_u8(TWL4030_MODULE_LED, 0x7f, reg + 1);
  if (status < 0)
   goto done;


  status = twl_i2c_write_u8(TWL4030_MODULE_LED, 0x7f, reg);
  if (status < 0)
   goto done;


  status = twl_i2c_read_u8(TWL4030_MODULE_LED, &cached_leden,
      TWL4030_LED_LEDEN_REG);
  if (status < 0)
   goto done;
  cached_leden &= ~ledclr_mask;
  status = twl_i2c_write_u8(TWL4030_MODULE_LED, cached_leden,
       TWL4030_LED_LEDEN_REG);
  if (status < 0)
   goto done;

  status = 0;
  goto done;
 }


 if (!priv->usage_count) {
  struct twl4030_gpio_platform_data *pdata;
  u8 value = MASK_GPIO_CTRL_GPIO_ON;




  pdata = dev_get_platdata(chip->parent);
  if (pdata)
   value |= pdata->mmc_cd & 0x03;

  status = gpio_twl4030_write(REG_GPIO_CTRL, value);
 }

done:
 if (!status)
  priv->usage_count |= BIT(offset);

 mutex_unlock(&priv->mutex);
 return status;
}
