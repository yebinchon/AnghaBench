
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm3100_data {int lock; int regmap; } ;


 int IIO_VAL_INT_PLUS_MICRO ;
 int RM3100_REG_TMRC ;
 unsigned int RM3100_TMRC_OFFSET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int** rm3100_samp_rates ;

__attribute__((used)) static int rm3100_get_samp_freq(struct rm3100_data *data, int *val, int *val2)
{
 unsigned int tmp;
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_read(data->regmap, RM3100_REG_TMRC, &tmp);
 mutex_unlock(&data->lock);
 if (ret < 0)
  return ret;
 *val = rm3100_samp_rates[tmp - RM3100_TMRC_OFFSET][0];
 *val2 = rm3100_samp_rates[tmp - RM3100_TMRC_OFFSET][1];

 return IIO_VAL_INT_PLUS_MICRO;
}
