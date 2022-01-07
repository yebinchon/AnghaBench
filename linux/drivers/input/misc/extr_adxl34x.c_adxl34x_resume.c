
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl34x {int suspended; int mutex; scalar_t__ opened; int disabled; } ;


 int __adxl34x_enable (struct adxl34x*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void adxl34x_resume(struct adxl34x *ac)
{
 mutex_lock(&ac->mutex);

 if (ac->suspended && !ac->disabled && ac->opened)
  __adxl34x_enable(ac);

 ac->suspended = 0;

 mutex_unlock(&ac->mutex);
}
