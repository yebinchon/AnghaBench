
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds9960_data {int als_adc_int_us; int lock; int regmap; } ;


 int APDS9960_REG_ATIME ;
 int ARRAY_SIZE (int**) ;
 int EINVAL ;
 int** apds9960_int_time ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int apds9960_set_it_time(struct apds9960_data *data, int val2)
{
 int ret = -EINVAL;
 int idx;

 for (idx = 0; idx < ARRAY_SIZE(apds9960_int_time); idx++) {
  if (apds9960_int_time[idx][0] == val2) {
   mutex_lock(&data->lock);
   ret = regmap_write(data->regmap, APDS9960_REG_ATIME,
       apds9960_int_time[idx][1]);
   if (!ret)
    data->als_adc_int_us = val2;
   mutex_unlock(&data->lock);
   break;
  }
 }

 return ret;
}
