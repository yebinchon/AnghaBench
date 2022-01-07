
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma3000_accl_data {int suspended; int mutex; scalar_t__ opened; } ;


 int cma3000_poweroff (struct cma3000_accl_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cma3000_suspend(struct cma3000_accl_data *data)
{
 mutex_lock(&data->mutex);

 if (!data->suspended && data->opened)
  cma3000_poweroff(data);

 data->suspended = 1;

 mutex_unlock(&data->mutex);
}
