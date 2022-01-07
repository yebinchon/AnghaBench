
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max8997_haptic {scalar_t__ mode; int pwm; int regulator; int input_dev; } ;


 scalar_t__ MAX8997_EXTERNAL_MODE ;
 int input_unregister_device (int ) ;
 int kfree (struct max8997_haptic*) ;
 struct max8997_haptic* platform_get_drvdata (struct platform_device*) ;
 int pwm_free (int ) ;
 int regulator_put (int ) ;

__attribute__((used)) static int max8997_haptic_remove(struct platform_device *pdev)
{
 struct max8997_haptic *chip = platform_get_drvdata(pdev);

 input_unregister_device(chip->input_dev);
 regulator_put(chip->regulator);

 if (chip->mode == MAX8997_EXTERNAL_MODE)
  pwm_free(chip->pwm);

 kfree(chip);

 return 0;
}
