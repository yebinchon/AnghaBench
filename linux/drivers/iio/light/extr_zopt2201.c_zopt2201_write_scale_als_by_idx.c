
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zopt2201_data {int lock; } ;
struct TYPE_2__ {int gain; int res; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* zopt2201_scale_als ;
 int zopt2201_set_gain (struct zopt2201_data*,int ) ;
 int zopt2201_set_resolution (struct zopt2201_data*,int ) ;

__attribute__((used)) static int zopt2201_write_scale_als_by_idx(struct zopt2201_data *data, int idx)
{
 int ret;

 mutex_lock(&data->lock);
 ret = zopt2201_set_resolution(data, zopt2201_scale_als[idx].res);
 if (ret < 0)
  goto unlock;

 ret = zopt2201_set_gain(data, zopt2201_scale_als[idx].gain);

unlock:
 mutex_unlock(&data->lock);
 return ret;
}
