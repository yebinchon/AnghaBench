
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxreg_led_priv_data {TYPE_1__* pdev; struct mlxreg_core_platform_data* pdata; } ;
struct led_classdev {int brightness; int dev; int flags; int blink_set; int brightness_get; int (* brightness_set_blocking ) (struct led_classdev*,int) ;int max_brightness; int name; } ;
struct mlxreg_led_data {struct mlxreg_core_data* data; int led_cdev_name; int base_color; struct mlxreg_led_priv_data* data_parent; struct led_classdev led_cdev; } ;
struct mlxreg_core_platform_data {int counter; int regmap; struct mlxreg_core_data* data; } ;
struct mlxreg_core_data {int bit; char* label; int reg; int mask; scalar_t__ capability; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 int LED_OFF ;
 int LED_ON ;
 int MLXREG_LED_AMBER_SOLID ;
 int MLXREG_LED_CAPABILITY_CLEAR ;
 int MLXREG_LED_GREEN_SOLID ;
 int MLXREG_LED_RED_SOLID ;
 int dev_err (int *,char*) ;
 int dev_info (int ,char*,char*,int ,int ) ;
 struct mlxreg_led_data* devm_kzalloc (int *,int,int ) ;
 int devm_led_classdev_register (int *,struct led_classdev*) ;
 int mlxreg_led_blink_set ;
 int mlxreg_led_brightness_get ;
 int mlxreg_led_brightness_set (struct led_classdev*,int) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int sprintf (int ,char*,char*,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int mlxreg_led_config(struct mlxreg_led_priv_data *priv)
{
 struct mlxreg_core_platform_data *led_pdata = priv->pdata;
 struct mlxreg_core_data *data = led_pdata->data;
 struct mlxreg_led_data *led_data;
 struct led_classdev *led_cdev;
 enum led_brightness brightness;
 u32 regval;
 int i;
 int err;

 for (i = 0; i < led_pdata->counter; i++, data++) {
  led_data = devm_kzalloc(&priv->pdev->dev, sizeof(*led_data),
     GFP_KERNEL);
  if (!led_data)
   return -ENOMEM;

  if (data->capability) {
   err = regmap_read(led_pdata->regmap, data->capability,
       &regval);
   if (err) {
    dev_err(&priv->pdev->dev, "Failed to query capability register\n");
    return err;
   }
   if (!(regval & data->bit))
    continue;





   data->bit &= MLXREG_LED_CAPABILITY_CLEAR;
  }

  led_cdev = &led_data->led_cdev;
  led_data->data_parent = priv;
  if (strstr(data->label, "red") ||
      strstr(data->label, "orange")) {
   brightness = LED_OFF;
   led_data->base_color = MLXREG_LED_RED_SOLID;
  } else if (strstr(data->label, "amber")) {
   brightness = LED_OFF;
   led_data->base_color = MLXREG_LED_AMBER_SOLID;
  } else {
   brightness = LED_OFF;
   led_data->base_color = MLXREG_LED_GREEN_SOLID;
  }
  sprintf(led_data->led_cdev_name, "%s:%s", "mlxreg",
   data->label);
  led_cdev->name = led_data->led_cdev_name;
  led_cdev->brightness = brightness;
  led_cdev->max_brightness = LED_ON;
  led_cdev->brightness_set_blocking =
      mlxreg_led_brightness_set;
  led_cdev->brightness_get = mlxreg_led_brightness_get;
  led_cdev->blink_set = mlxreg_led_blink_set;
  led_cdev->flags = LED_CORE_SUSPENDRESUME;
  led_data->data = data;
  err = devm_led_classdev_register(&priv->pdev->dev, led_cdev);
  if (err)
   return err;

  if (led_cdev->brightness)
   mlxreg_led_brightness_set(led_cdev,
        led_cdev->brightness);
  dev_info(led_cdev->dev, "label: %s, mask: 0x%02x, offset:0x%02x\n",
    data->label, data->mask, data->reg);
 }

 return 0;
}
