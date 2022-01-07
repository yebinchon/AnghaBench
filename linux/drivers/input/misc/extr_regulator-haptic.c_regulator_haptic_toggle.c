
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_haptic {int active; int dev; int regulator; } ;


 int dev_err (int ,char*,char*,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int regulator_haptic_toggle(struct regulator_haptic *haptic, bool on)
{
 int error;

 if (haptic->active != on) {

  error = on ? regulator_enable(haptic->regulator) :
        regulator_disable(haptic->regulator);
  if (error) {
   dev_err(haptic->dev,
    "failed to switch regulator %s: %d\n",
    on ? "on" : "off", error);
   return error;
  }

  haptic->active = on;
 }

 return 0;
}
