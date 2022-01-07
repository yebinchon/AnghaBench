
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3697_led {int lmu_data; } ;
struct lm3697 {int bank_cfg; TYPE_1__* client; struct lm3697_led* leds; int regmap; scalar_t__ enable_gpio; } ;
struct TYPE_2__ {int dev; } ;


 int LM3697_CTRL_ENABLE ;
 int LM3697_MAX_CONTROL_BANKS ;
 int LM3697_OUTPUT_CONFIG ;
 int LM3697_RESET ;
 int LM3697_SW_RESET ;
 int dev_err (int *,char*) ;
 int gpiod_direction_output (scalar_t__,int) ;
 int regmap_write (int ,int ,int) ;
 int ti_lmu_common_set_ramp (int *) ;

__attribute__((used)) static int lm3697_init(struct lm3697 *priv)
{
 struct lm3697_led *led;
 int i, ret;

 if (priv->enable_gpio) {
  gpiod_direction_output(priv->enable_gpio, 1);
 } else {
  ret = regmap_write(priv->regmap, LM3697_RESET, LM3697_SW_RESET);
  if (ret) {
   dev_err(&priv->client->dev, "Cannot reset the device\n");
   goto out;
  }
 }

 ret = regmap_write(priv->regmap, LM3697_CTRL_ENABLE, 0x0);
 if (ret) {
  dev_err(&priv->client->dev, "Cannot write ctrl enable\n");
  goto out;
 }

 ret = regmap_write(priv->regmap, LM3697_OUTPUT_CONFIG, priv->bank_cfg);
 if (ret)
  dev_err(&priv->client->dev, "Cannot write OUTPUT config\n");

 for (i = 0; i < LM3697_MAX_CONTROL_BANKS; i++) {
  led = &priv->leds[i];
  ret = ti_lmu_common_set_ramp(&led->lmu_data);
  if (ret)
   dev_err(&priv->client->dev, "Setting the ramp rate failed\n");
 }
out:
 return ret;
}
