
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl6180_data {int als_it_ms; int lock; int client; } ;


 int EINVAL ;
 int VL6180_ALS_IT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vl6180_hold (struct vl6180_data*,int) ;
 int vl6180_write_word (int ,int ,int) ;

__attribute__((used)) static int vl6180_set_it(struct vl6180_data *data, int val, int val2)
{
 int ret, it_ms;

 it_ms = (val2 + 500) / 1000;
 if (val != 0 || it_ms < 1 || it_ms > 512)
  return -EINVAL;

 mutex_lock(&data->lock);
 ret = vl6180_hold(data, 1);
 if (ret < 0)
  goto fail;

 ret = vl6180_write_word(data->client, VL6180_ALS_IT, it_ms - 1);

 if (ret >= 0)
  data->als_it_ms = it_ms;

fail:
 vl6180_hold(data, 0);
 mutex_unlock(&data->lock);

 return ret;
}
