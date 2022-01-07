
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_haptic {int work; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct regulator_haptic* input_get_drvdata (struct input_dev*) ;
 int regulator_haptic_set_voltage (struct regulator_haptic*,int ) ;

__attribute__((used)) static void regulator_haptic_close(struct input_dev *input)
{
 struct regulator_haptic *haptic = input_get_drvdata(input);

 cancel_work_sync(&haptic->work);
 regulator_haptic_set_voltage(haptic, 0);
}
