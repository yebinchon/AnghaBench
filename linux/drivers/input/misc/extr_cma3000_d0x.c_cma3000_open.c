
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cma3000_accl_data {int opened; int mutex; int suspended; } ;


 int cma3000_poweron (struct cma3000_accl_data*) ;
 struct cma3000_accl_data* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cma3000_open(struct input_dev *input_dev)
{
 struct cma3000_accl_data *data = input_get_drvdata(input_dev);

 mutex_lock(&data->mutex);

 if (!data->suspended)
  cma3000_poweron(data);

 data->opened = 1;

 mutex_unlock(&data->mutex);

 return 0;
}
