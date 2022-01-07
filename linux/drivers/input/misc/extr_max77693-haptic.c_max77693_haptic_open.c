
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_haptic {int dev; int motor_reg; } ;
struct input_dev {int dummy; } ;


 int dev_err (int ,char*,int) ;
 struct max77693_haptic* input_get_drvdata (struct input_dev*) ;
 int max77843_haptic_bias (struct max77693_haptic*,int) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int max77693_haptic_open(struct input_dev *dev)
{
 struct max77693_haptic *haptic = input_get_drvdata(dev);
 int error;

 error = max77843_haptic_bias(haptic, 1);
 if (error)
  return error;

 error = regulator_enable(haptic->motor_reg);
 if (error) {
  dev_err(haptic->dev,
   "failed to enable regulator: %d\n", error);
  return error;
 }

 return 0;
}
