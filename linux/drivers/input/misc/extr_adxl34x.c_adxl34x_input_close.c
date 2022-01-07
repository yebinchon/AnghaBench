
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct adxl34x {int opened; int mutex; int disabled; int suspended; } ;


 int __adxl34x_disable (struct adxl34x*) ;
 struct adxl34x* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void adxl34x_input_close(struct input_dev *input)
{
 struct adxl34x *ac = input_get_drvdata(input);

 mutex_lock(&ac->mutex);

 if (!ac->suspended && !ac->disabled)
  __adxl34x_disable(ac);

 ac->opened = 0;

 mutex_unlock(&ac->mutex);
}
