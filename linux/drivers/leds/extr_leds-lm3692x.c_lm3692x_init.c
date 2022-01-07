
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3692x_led {int led_enable; TYPE_1__* client; scalar_t__ regulator; scalar_t__ enable_gpio; int regmap; int model_id; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int LM36923_LED3_EN ;
 int LM36923_MODEL ;
 int LM3692X_AUTO_FREQ_HI ;
 int LM3692X_AUTO_FREQ_LO ;
 int LM3692X_BL_ADJ_POL ;
 int LM3692X_BL_ADJ_THRESH ;
 int LM3692X_BOOST_CTRL ;
 int LM3692X_BRHT_MODE_RAMP_MULTI ;
 int LM3692X_BRT_CTRL ;
 int LM3692X_BRT_LSB ;
 int LM3692X_BRT_MSB ;
 int LM3692X_DEVICE_EN ;
 int LM3692X_EN ;
 int LM3692X_ENABLE_MASK ;
 int LM3692X_LED1_EN ;
 int LM3692X_LED2_EN ;
 int LM3692X_PWM_CTRL ;
 int LM3692X_PWM_FILTER_100 ;
 int LM3692X_PWM_HYSTER_4LSB ;
 int LM3692X_PWM_SAMP_24MHZ ;
 int LM3692X_RAMP_RATE_250us ;
 int dev_err (int *,char*) ;
 int gpiod_direction_output (scalar_t__,int) ;
 int lm3692x_fault_check (struct lm3692x_led*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int lm3692x_init(struct lm3692x_led *led)
{
 int enable_state;
 int ret;

 if (led->regulator) {
  ret = regulator_enable(led->regulator);
  if (ret) {
   dev_err(&led->client->dev,
    "Failed to enable regulator\n");
   return ret;
  }
 }

 if (led->enable_gpio)
  gpiod_direction_output(led->enable_gpio, 1);

 ret = lm3692x_fault_check(led);
 if (ret) {
  dev_err(&led->client->dev, "Cannot read/clear faults\n");
  goto out;
 }

 ret = regmap_write(led->regmap, LM3692X_BRT_CTRL, 0x00);
 if (ret)
  goto out;







 ret = regmap_write(led->regmap, LM3692X_EN, LM3692X_DEVICE_EN);
 if (ret)
  goto out;




 ret = regmap_write(led->regmap, LM3692X_BRT_MSB, 0);
 if (ret)
  goto out;

 ret = regmap_write(led->regmap, LM3692X_BRT_LSB, 0);
 if (ret)
  goto out;

 ret = regmap_write(led->regmap, LM3692X_PWM_CTRL,
  LM3692X_PWM_FILTER_100 | LM3692X_PWM_SAMP_24MHZ);
 if (ret)
  goto out;

 ret = regmap_write(led->regmap, LM3692X_BOOST_CTRL,
   LM3692X_BRHT_MODE_RAMP_MULTI |
   LM3692X_BL_ADJ_POL |
   LM3692X_RAMP_RATE_250us);
 if (ret)
  goto out;

 ret = regmap_write(led->regmap, LM3692X_AUTO_FREQ_HI, 0x00);
 if (ret)
  goto out;

 ret = regmap_write(led->regmap, LM3692X_AUTO_FREQ_LO, 0x00);
 if (ret)
  goto out;

 ret = regmap_write(led->regmap, LM3692X_BL_ADJ_THRESH, 0x00);
 if (ret)
  goto out;

 ret = regmap_write(led->regmap, LM3692X_BRT_CTRL,
   LM3692X_BL_ADJ_POL | LM3692X_PWM_HYSTER_4LSB);
 if (ret)
  goto out;

 switch (led->led_enable) {
 case 0:
 default:
  if (led->model_id == LM36923_MODEL)
   enable_state = LM3692X_LED1_EN | LM3692X_LED2_EN |
          LM36923_LED3_EN;
  else
   enable_state = LM3692X_LED1_EN | LM3692X_LED2_EN;

  break;
 case 1:
  enable_state = LM3692X_LED1_EN;
  break;
 case 2:
  enable_state = LM3692X_LED2_EN;
  break;

 case 3:
  if (led->model_id == LM36923_MODEL) {
   enable_state = LM36923_LED3_EN;
   break;
  }

  ret = -EINVAL;
  dev_err(&led->client->dev,
   "LED3 sync not available on this device\n");
  goto out;
 }

 ret = regmap_update_bits(led->regmap, LM3692X_EN, LM3692X_ENABLE_MASK,
     enable_state | LM3692X_DEVICE_EN);

 return ret;
out:
 dev_err(&led->client->dev, "Fail writing initialization values\n");

 if (led->enable_gpio)
  gpiod_direction_output(led->enable_gpio, 0);

 if (led->regulator) {
  ret = regulator_disable(led->regulator);
  if (ret)
   dev_err(&led->client->dev,
    "Failed to disable regulator\n");
 }

 return ret;
}
