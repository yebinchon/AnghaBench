
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct regulator_haptic {scalar_t__ min_volt; int dev; scalar_t__ max_volt; int regulator; } ;


 unsigned int MAX_MAGNITUDE_SHIFT ;
 int dev_err (int ,char*,scalar_t__,int) ;
 int regulator_haptic_toggle (struct regulator_haptic*,int) ;
 int regulator_set_voltage (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int regulator_haptic_set_voltage(struct regulator_haptic *haptic,
      unsigned int magnitude)
{
 u64 volt_mag_multi;
 unsigned int intensity;
 int error;

 volt_mag_multi = (u64)(haptic->max_volt - haptic->min_volt) * magnitude;
 intensity = (unsigned int)(volt_mag_multi >> MAX_MAGNITUDE_SHIFT);

 error = regulator_set_voltage(haptic->regulator,
          intensity + haptic->min_volt,
          haptic->max_volt);
 if (error) {
  dev_err(haptic->dev, "cannot set regulator voltage to %d: %d\n",
   intensity + haptic->min_volt, error);
  return error;
 }

 regulator_haptic_toggle(haptic, !!magnitude);

 return 0;
}
