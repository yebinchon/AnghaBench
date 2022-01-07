
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int lut_size; scalar_t__* pwm1; scalar_t__* temp8; int update_lock; } ;
struct device {int dummy; } ;


 int dev_warn (struct device*,char*,int,int) ;
 int lm63_update_lut (struct lm63_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm63_lut_looks_bad(struct device *dev, struct lm63_data *data)
{
 int i;

 mutex_lock(&data->update_lock);
 lm63_update_lut(data);

 for (i = 1; i < data->lut_size; i++) {
  if (data->pwm1[1 + i - 1] > data->pwm1[1 + i]
   || data->temp8[3 + i - 1] > data->temp8[3 + i]) {
   dev_warn(dev,
     "Lookup table doesn't look sane (check entries %d and %d)\n",
     i, i + 1);
   break;
  }
 }
 mutex_unlock(&data->update_lock);

 return i == data->lut_size ? 0 : 1;
}
