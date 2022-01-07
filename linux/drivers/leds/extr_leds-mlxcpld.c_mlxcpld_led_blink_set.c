
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base_color; int offset; int mask; } ;
struct mlxcpld_led_priv {TYPE_1__ param; } ;
struct led_classdev {int dummy; } ;


 int EINVAL ;
 unsigned long MLXCPLD_LED_BLINK_3HZ ;
 unsigned long MLXCPLD_LED_BLINK_6HZ ;
 scalar_t__ MLXCPLD_LED_OFFSET_FULL ;
 scalar_t__ MLXCPLD_LED_OFFSET_HALF ;
 struct mlxcpld_led_priv* cdev_to_priv (struct led_classdev*) ;
 int mlxcpld_led_store_hw (int ,int ,scalar_t__) ;

__attribute__((used)) static int mlxcpld_led_blink_set(struct led_classdev *led,
     unsigned long *delay_on,
     unsigned long *delay_off)
{
 struct mlxcpld_led_priv *pled = cdev_to_priv(led);





 if (!(*delay_on == 0 && *delay_off == 0) &&
     !(*delay_on == MLXCPLD_LED_BLINK_3HZ &&
       *delay_off == MLXCPLD_LED_BLINK_3HZ) &&
     !(*delay_on == MLXCPLD_LED_BLINK_6HZ &&
       *delay_off == MLXCPLD_LED_BLINK_6HZ))
  return -EINVAL;

 if (*delay_on == MLXCPLD_LED_BLINK_6HZ)
  mlxcpld_led_store_hw(pled->param.mask, pled->param.offset,
         pled->param.base_color +
         MLXCPLD_LED_OFFSET_FULL);
 else
  mlxcpld_led_store_hw(pled->param.mask, pled->param.offset,
         pled->param.base_color +
         MLXCPLD_LED_OFFSET_HALF);

 return 0;
}
