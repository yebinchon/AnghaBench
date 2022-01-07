
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_flash_setting {int max; int step; int val; int min; } ;
struct led_classdev_flash {struct led_flash_setting timeout; } ;
struct ktd2692_led_config_data {int flash_max_timeout; } ;


 int KTD2692_FLASH_MODE_TIMEOUT_DISABLE ;
 int KTD2692_FLASH_MODE_TIMEOUT_LEVELS ;

__attribute__((used)) static void ktd2692_init_flash_timeout(struct led_classdev_flash *fled_cdev,
           struct ktd2692_led_config_data *cfg)
{
 struct led_flash_setting *setting;

 setting = &fled_cdev->timeout;
 setting->min = KTD2692_FLASH_MODE_TIMEOUT_DISABLE;
 setting->max = cfg->flash_max_timeout;
 setting->step = cfg->flash_max_timeout
   / (KTD2692_FLASH_MODE_TIMEOUT_LEVELS - 1);
 setting->val = cfg->flash_max_timeout;
}
