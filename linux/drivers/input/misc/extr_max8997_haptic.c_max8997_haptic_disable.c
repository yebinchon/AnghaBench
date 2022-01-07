
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_haptic {int enabled; scalar_t__ mode; int mutex; int regulator; int pwm; } ;


 scalar_t__ MAX8997_EXTERNAL_MODE ;
 int max8997_haptic_configure (struct max8997_haptic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_disable (int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void max8997_haptic_disable(struct max8997_haptic *chip)
{
 mutex_lock(&chip->mutex);

 if (chip->enabled) {
  chip->enabled = 0;
  max8997_haptic_configure(chip);
  if (chip->mode == MAX8997_EXTERNAL_MODE)
   pwm_disable(chip->pwm);
  regulator_disable(chip->regulator);
 }

 mutex_unlock(&chip->mutex);
}
