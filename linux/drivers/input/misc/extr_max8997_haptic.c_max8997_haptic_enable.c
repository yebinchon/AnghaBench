
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_haptic {int enabled; scalar_t__ mode; int mutex; int regulator; int dev; int pwm; } ;


 scalar_t__ MAX8997_EXTERNAL_MODE ;
 int dev_err (int ,char*,...) ;
 int max8997_haptic_configure (struct max8997_haptic*) ;
 int max8997_haptic_set_duty_cycle (struct max8997_haptic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_enable (int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void max8997_haptic_enable(struct max8997_haptic *chip)
{
 int error;

 mutex_lock(&chip->mutex);

 error = max8997_haptic_set_duty_cycle(chip);
 if (error) {
  dev_err(chip->dev, "set_pwm_cycle failed, error: %d\n", error);
  goto out;
 }

 if (!chip->enabled) {
  error = regulator_enable(chip->regulator);
  if (error) {
   dev_err(chip->dev, "Failed to enable regulator\n");
   goto out;
  }
  max8997_haptic_configure(chip);
  if (chip->mode == MAX8997_EXTERNAL_MODE) {
   error = pwm_enable(chip->pwm);
   if (error) {
    dev_err(chip->dev, "Failed to enable PWM\n");
    regulator_disable(chip->regulator);
    goto out;
   }
  }
  chip->enabled = 1;
 }

out:
 mutex_unlock(&chip->mutex);
}
