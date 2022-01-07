
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxreg_led_data {int base_color; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int MLXREG_LED_IS_OFF ;
 struct mlxreg_led_data* cdev_to_priv (struct led_classdev*) ;
 int mlxreg_led_store_hw (struct mlxreg_led_data*,int ) ;

__attribute__((used)) static int
mlxreg_led_brightness_set(struct led_classdev *cled, enum led_brightness value)
{
 struct mlxreg_led_data *led_data = cdev_to_priv(cled);

 if (value)
  return mlxreg_led_store_hw(led_data, led_data->base_color);
 else
  return mlxreg_led_store_hw(led_data, MLXREG_LED_IS_OFF);
}
