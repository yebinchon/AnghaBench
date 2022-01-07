
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3532_led {scalar_t__ enabled; TYPE_1__* priv; int control_bank; } ;
struct TYPE_2__ {int regulator; int dev; int regmap; } ;


 int BIT (int ) ;
 int LM3532_REG_ENABLE ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int lm3532_led_disable(struct lm3532_led *led_data)
{
 int ctrl_en_val = BIT(led_data->control_bank);
 int ret;

 if (!led_data->enabled)
  return 0;

 ret = regmap_update_bits(led_data->priv->regmap, LM3532_REG_ENABLE,
      ctrl_en_val, 0);
 if (ret) {
  dev_err(led_data->priv->dev, "Failed to set ctrl:%d\n", ret);
  return ret;
 }

 ret = regulator_disable(led_data->priv->regulator);
 if (ret < 0)
  return ret;

 led_data->enabled = 0;

 return 0;
}
