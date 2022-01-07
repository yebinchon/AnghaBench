
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxreg_led_data {int dummy; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 struct mlxreg_led_data* cdev_to_priv (struct led_classdev*) ;
 int mlxreg_led_get_hw (struct mlxreg_led_data*) ;

__attribute__((used)) static enum led_brightness
mlxreg_led_brightness_get(struct led_classdev *cled)
{
 struct mlxreg_led_data *led_data = cdev_to_priv(cled);

 return mlxreg_led_get_hw(led_data);
}
