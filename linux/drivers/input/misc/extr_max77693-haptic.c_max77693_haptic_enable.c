
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_haptic {int enabled; int pwm_dev; int dev; } ;


 int dev_err (int ,char*,int) ;
 int max77693_haptic_configure (struct max77693_haptic*,int) ;
 int max77693_haptic_lowsys (struct max77693_haptic*,int) ;
 int pwm_disable (int ) ;
 int pwm_enable (int ) ;

__attribute__((used)) static void max77693_haptic_enable(struct max77693_haptic *haptic)
{
 int error;

 if (haptic->enabled)
  return;

 error = pwm_enable(haptic->pwm_dev);
 if (error) {
  dev_err(haptic->dev,
   "failed to enable haptic pwm device: %d\n", error);
  return;
 }

 error = max77693_haptic_lowsys(haptic, 1);
 if (error)
  goto err_enable_lowsys;

 error = max77693_haptic_configure(haptic, 1);
 if (error)
  goto err_enable_config;

 haptic->enabled = 1;

 return;

err_enable_config:
 max77693_haptic_lowsys(haptic, 0);
err_enable_lowsys:
 pwm_disable(haptic->pwm_dev);
}
