
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zopt2201_data {int lock; } ;
struct TYPE_3__ {int us; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* zopt2201_resolution ;
 int zopt2201_set_resolution (struct zopt2201_data*,int) ;

__attribute__((used)) static int zopt2201_write_resolution(struct zopt2201_data *data,
         int val, int val2)
{
 int i, ret;

 if (val != 0)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(zopt2201_resolution); i++)
  if (val2 == zopt2201_resolution[i].us) {
   mutex_lock(&data->lock);
   ret = zopt2201_set_resolution(data, i);
   mutex_unlock(&data->lock);
   return ret;
  }

 return -EINVAL;
}
