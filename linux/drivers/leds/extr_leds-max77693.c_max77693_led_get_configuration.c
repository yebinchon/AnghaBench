
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_led_device {int iout_flash_max; int iout_torch_max; } ;
struct max77693_led_config_data {int iout_flash_max; int iout_torch_max; } ;
struct device_node {int dummy; } ;


 int max77693_led_parse_dt (struct max77693_led_device*,struct max77693_led_config_data*,struct device_node**) ;
 int max77693_led_validate_configuration (struct max77693_led_device*,struct max77693_led_config_data*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int max77693_led_get_configuration(struct max77693_led_device *led,
    struct max77693_led_config_data *cfg,
    struct device_node **sub_nodes)
{
 int ret;

 ret = max77693_led_parse_dt(led, cfg, sub_nodes);
 if (ret < 0)
  return ret;

 max77693_led_validate_configuration(led, cfg);

 memcpy(led->iout_torch_max, cfg->iout_torch_max,
    sizeof(led->iout_torch_max));
 memcpy(led->iout_flash_max, cfg->iout_flash_max,
    sizeof(led->iout_flash_max));

 return 0;
}
