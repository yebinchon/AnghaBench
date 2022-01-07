
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_flash_setting {int min; int max; int step; int val; } ;
struct led_classdev_flash {struct led_flash_setting timeout; } ;
struct aat1290_led_config_data {int max_flash_tm; } ;
struct aat1290_led {struct led_classdev_flash fled_cdev; } ;


 int AAT1290_FLASH_TM_NUM_LEVELS ;

__attribute__((used)) static void aat1290_init_flash_timeout(struct aat1290_led *led,
    struct aat1290_led_config_data *cfg)
{
 struct led_classdev_flash *fled_cdev = &led->fled_cdev;
 struct led_flash_setting *setting;


 setting = &fled_cdev->timeout;
 setting->min = cfg->max_flash_tm / AAT1290_FLASH_TM_NUM_LEVELS;
 setting->max = cfg->max_flash_tm;
 setting->step = setting->min;
 setting->val = setting->max;
}
