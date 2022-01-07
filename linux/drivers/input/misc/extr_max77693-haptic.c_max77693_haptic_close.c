
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_haptic {int dev; int motor_reg; int work; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 int dev_err (int ,char*,int) ;
 struct max77693_haptic* input_get_drvdata (struct input_dev*) ;
 int max77693_haptic_disable (struct max77693_haptic*) ;
 int max77843_haptic_bias (struct max77693_haptic*,int) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void max77693_haptic_close(struct input_dev *dev)
{
 struct max77693_haptic *haptic = input_get_drvdata(dev);
 int error;

 cancel_work_sync(&haptic->work);
 max77693_haptic_disable(haptic);

 error = regulator_disable(haptic->motor_reg);
 if (error)
  dev_err(haptic->dev,
   "failed to disable regulator: %d\n", error);

 max77843_haptic_bias(haptic, 0);
}
