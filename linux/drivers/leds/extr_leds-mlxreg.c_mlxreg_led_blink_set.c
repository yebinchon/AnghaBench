
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxreg_led_data {scalar_t__ base_color; } ;
struct led_classdev {int dummy; } ;


 int EINVAL ;
 unsigned long MLXREG_LED_BLINK_3HZ ;
 unsigned long MLXREG_LED_BLINK_6HZ ;
 scalar_t__ MLXREG_LED_OFFSET_BLINK_3HZ ;
 scalar_t__ MLXREG_LED_OFFSET_BLINK_6HZ ;
 struct mlxreg_led_data* cdev_to_priv (struct led_classdev*) ;
 int mlxreg_led_store_hw (struct mlxreg_led_data*,scalar_t__) ;

__attribute__((used)) static int
mlxreg_led_blink_set(struct led_classdev *cled, unsigned long *delay_on,
       unsigned long *delay_off)
{
 struct mlxreg_led_data *led_data = cdev_to_priv(cled);
 int err;






 if (!(*delay_on == 0 && *delay_off == 0) &&
     !(*delay_on == MLXREG_LED_BLINK_3HZ &&
       *delay_off == MLXREG_LED_BLINK_3HZ) &&
     !(*delay_on == MLXREG_LED_BLINK_6HZ &&
       *delay_off == MLXREG_LED_BLINK_6HZ))
  return -EINVAL;

 if (*delay_on == MLXREG_LED_BLINK_6HZ)
  err = mlxreg_led_store_hw(led_data, led_data->base_color +
       MLXREG_LED_OFFSET_BLINK_6HZ);
 else if (*delay_on == MLXREG_LED_BLINK_3HZ)
  err = mlxreg_led_store_hw(led_data, led_data->base_color +
       MLXREG_LED_OFFSET_BLINK_3HZ);
 else
  err = mlxreg_led_store_hw(led_data, led_data->base_color);

 return err;
}
