
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_haptic {int enabled; int pwm_dev; } ;


 int max77693_haptic_configure (struct max77693_haptic*,int) ;
 int max77693_haptic_lowsys (struct max77693_haptic*,int) ;
 int pwm_disable (int ) ;

__attribute__((used)) static void max77693_haptic_disable(struct max77693_haptic *haptic)
{
 int error;

 if (!haptic->enabled)
  return;

 error = max77693_haptic_configure(haptic, 0);
 if (error)
  return;

 error = max77693_haptic_lowsys(haptic, 0);
 if (error)
  goto err_disable_lowsys;

 pwm_disable(haptic->pwm_dev);
 haptic->enabled = 0;

 return;

err_disable_lowsys:
 max77693_haptic_configure(haptic, 1);
}
