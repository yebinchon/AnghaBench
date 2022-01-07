
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; int mask; int base_color; } ;
struct mlxcpld_led_priv {TYPE_1__ param; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int MLXCPLD_LED_IS_OFF ;
 struct mlxcpld_led_priv* cdev_to_priv (struct led_classdev*) ;
 int mlxcpld_led_store_hw (int ,int ,int ) ;

__attribute__((used)) static void mlxcpld_led_brightness_set(struct led_classdev *led,
           enum led_brightness value)
{
 struct mlxcpld_led_priv *pled = cdev_to_priv(led);

 if (value) {
  mlxcpld_led_store_hw(pled->param.mask, pled->param.offset,
         pled->param.base_color);
  return;
 }

 mlxcpld_led_store_hw(pled->param.mask, pled->param.offset,
        MLXCPLD_LED_IS_OFF);
}
