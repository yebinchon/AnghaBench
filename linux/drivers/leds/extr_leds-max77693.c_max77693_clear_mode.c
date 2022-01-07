
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max77693_led_device {int mode_flags; scalar_t__ iout_joint; } ;


 int max77693_set_mode_reg (struct max77693_led_device*,int) ;

__attribute__((used)) static int max77693_clear_mode(struct max77693_led_device *led,
    u8 mode)
{
 if (led->iout_joint)

  mode |= (mode << 1);

 led->mode_flags &= ~mode;

 return max77693_set_mode_reg(led, led->mode_flags);
}
