
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {int opened; int mutex; int suspended; } ;
struct input_dev {int dummy; } ;


 int __tsc200x_enable (struct tsc200x*) ;
 struct tsc200x* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tsc200x_open(struct input_dev *input)
{
 struct tsc200x *ts = input_get_drvdata(input);

 mutex_lock(&ts->mutex);

 if (!ts->suspended)
  __tsc200x_enable(ts);

 ts->opened = 1;

 mutex_unlock(&ts->mutex);

 return 0;
}
