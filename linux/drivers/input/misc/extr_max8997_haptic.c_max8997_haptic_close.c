
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_haptic {int work; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct max8997_haptic* input_get_drvdata (struct input_dev*) ;
 int max8997_haptic_disable (struct max8997_haptic*) ;

__attribute__((used)) static void max8997_haptic_close(struct input_dev *dev)
{
 struct max8997_haptic *chip = input_get_drvdata(dev);

 cancel_work_sync(&chip->work);
 max8997_haptic_disable(chip);
}
