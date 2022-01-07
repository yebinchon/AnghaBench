
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxreg_led_priv_data {struct mlxreg_core_platform_data* pdata; } ;
struct TYPE_2__ {int dev; } ;
struct mlxreg_led_data {int base_color; TYPE_1__ led_cdev; struct mlxreg_core_data* data; struct mlxreg_led_priv_data* data_parent; } ;
struct mlxreg_core_platform_data {int regmap; } ;
struct mlxreg_core_data {int mask; scalar_t__ bit; int reg; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FULL ;
 int LED_OFF ;
 int MLXREG_LED_OFFSET_BLINK_6HZ ;
 int dev_warn (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int ror32 (int,scalar_t__) ;

__attribute__((used)) static enum led_brightness
mlxreg_led_get_hw(struct mlxreg_led_data *led_data)
{
 struct mlxreg_led_priv_data *priv = led_data->data_parent;
 struct mlxreg_core_platform_data *led_pdata = priv->pdata;
 struct mlxreg_core_data *data = led_data->data;
 u32 regval;
 int err;
 err = regmap_read(led_pdata->regmap, data->reg, &regval);
 if (err < 0) {
  dev_warn(led_data->led_cdev.dev, "Failed to get current brightness, error: %d\n",
    err);

  return LED_OFF;
 }

 regval = regval & ~data->mask;
 regval = (ror32(data->mask, data->bit) == 0xf0) ? ror32(regval,
   data->bit) : ror32(regval, data->bit + 4);
 if (regval >= led_data->base_color &&
     regval <= (led_data->base_color + MLXREG_LED_OFFSET_BLINK_6HZ))
  return LED_FULL;

 return LED_OFF;
}
