
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds9960_data {int als_gain; int lock; int regmap; } ;


 int APDS9960_REG_CONTROL ;
 int APDS9960_REG_CONTROL_AGAIN_MASK ;
 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* apds9960_als_gain_map ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int apds9960_set_als_gain(struct apds9960_data *data, int val)
{
 int ret = -EINVAL;
 int idx;

 for (idx = 0; idx < ARRAY_SIZE(apds9960_als_gain_map); idx++) {
  if (apds9960_als_gain_map[idx] == val) {
   mutex_lock(&data->lock);
   ret = regmap_update_bits(data->regmap,
     APDS9960_REG_CONTROL,
     APDS9960_REG_CONTROL_AGAIN_MASK, idx);
   if (!ret)
    data->als_gain = idx;
   mutex_unlock(&data->lock);
   break;
  }
 }

 return ret;
}
