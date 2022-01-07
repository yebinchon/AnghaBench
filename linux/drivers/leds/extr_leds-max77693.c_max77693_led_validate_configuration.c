
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max77693_led_device {int iout_joint; } ;
struct max77693_led_config_data {scalar_t__ boost_mode; int num_leds; scalar_t__ low_vsys; scalar_t__ boost_vout; scalar_t__* flash_timeout_max; int iout_flash_max; int iout_torch_max; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int FLASH_IOUT_MAX_1LED ;
 int FLASH_IOUT_MAX_2LEDS ;
 int FLASH_IOUT_MIN ;
 int FLASH_IOUT_STEP ;
 int FLASH_TIMEOUT_MAX ;
 int FLASH_TIMEOUT_MIN ;
 int FLASH_TIMEOUT_STEP ;
 int FLASH_VOUT_MAX ;
 int FLASH_VOUT_MIN ;
 int FLASH_VOUT_STEP ;
 int FLED1 ;
 int FLED2 ;
 scalar_t__ MAX77693_LED_BOOST_FIXED ;
 scalar_t__ MAX77693_LED_BOOST_NONE ;
 int MAX_FLASH1_VSYS_MAX ;
 int MAX_FLASH1_VSYS_MIN ;
 int MAX_FLASH1_VSYS_STEP ;
 int TORCH_IOUT_MAX ;
 int TORCH_IOUT_MIN ;
 int TORCH_IOUT_STEP ;
 int clamp_align (scalar_t__*,int ,int ,int ) ;
 scalar_t__ clamp_val (scalar_t__,scalar_t__,scalar_t__) ;
 int max77693_align_iout_current (struct max77693_led_device*,int ,int ,int ,int ) ;
 scalar_t__ max77693_fled_used (struct max77693_led_device*,int ) ;

__attribute__((used)) static void max77693_led_validate_configuration(struct max77693_led_device *led,
     struct max77693_led_config_data *cfg)
{
 u32 flash_iout_max = cfg->boost_mode ? FLASH_IOUT_MAX_2LEDS :
            FLASH_IOUT_MAX_1LED;
 int i;

 if (cfg->num_leds == 1 &&
     max77693_fled_used(led, FLED1) && max77693_fled_used(led, FLED2))
  led->iout_joint = 1;

 cfg->boost_mode = clamp_val(cfg->boost_mode, MAX77693_LED_BOOST_NONE,
       MAX77693_LED_BOOST_FIXED);


 if ((cfg->boost_mode == MAX77693_LED_BOOST_NONE) && led->iout_joint)
  cfg->boost_mode = MAX77693_LED_BOOST_FIXED;

 max77693_align_iout_current(led, cfg->iout_torch_max,
   TORCH_IOUT_MIN, TORCH_IOUT_MAX, TORCH_IOUT_STEP);

 max77693_align_iout_current(led, cfg->iout_flash_max,
   FLASH_IOUT_MIN, flash_iout_max, FLASH_IOUT_STEP);

 for (i = 0; i < ARRAY_SIZE(cfg->flash_timeout_max); ++i)
  clamp_align(&cfg->flash_timeout_max[i], FLASH_TIMEOUT_MIN,
    FLASH_TIMEOUT_MAX, FLASH_TIMEOUT_STEP);

 clamp_align(&cfg->boost_vout, FLASH_VOUT_MIN, FLASH_VOUT_MAX,
       FLASH_VOUT_STEP);

 if (cfg->low_vsys)
  clamp_align(&cfg->low_vsys, MAX_FLASH1_VSYS_MIN,
    MAX_FLASH1_VSYS_MAX, MAX_FLASH1_VSYS_STEP);
}
