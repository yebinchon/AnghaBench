
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl6180_data {int lock; int als_gain_milli; int client; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int VL6180_ALS_GAIN ;
 int find_closest (int,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * vl6180_als_gain_tab ;
 int * vl6180_als_gain_tab_bits ;
 int vl6180_hold (struct vl6180_data*,int) ;
 int vl6180_write_byte (int ,int ,int ) ;

__attribute__((used)) static int vl6180_set_als_gain(struct vl6180_data *data, int val, int val2)
{
 int i, ret, gain;

 if (val < 1 || val > 40)
  return -EINVAL;

 gain = (val * 1000000 + val2) / 1000;
 if (gain < 1 || gain > 40000)
  return -EINVAL;

 i = find_closest(gain, vl6180_als_gain_tab,
    ARRAY_SIZE(vl6180_als_gain_tab));

 mutex_lock(&data->lock);
 ret = vl6180_hold(data, 1);
 if (ret < 0)
  goto fail;

 ret = vl6180_write_byte(data->client, VL6180_ALS_GAIN,
    vl6180_als_gain_tab_bits[i]);

 if (ret >= 0)
  data->als_gain_milli = vl6180_als_gain_tab[i];

fail:
 vl6180_hold(data, 0);
 mutex_unlock(&data->lock);
 return ret;
}
