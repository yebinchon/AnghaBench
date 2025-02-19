
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm3100_data {int conversion_time; int lock; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct iio_dev {scalar_t__ currentmode; int* active_scan_mask; } ;


 int EINVAL ;
 scalar_t__ INDIO_BUFFER_TRIGGERED ;
 int RM3100_CMM_AXIS_SHIFT ;
 int RM3100_CMM_START ;
 int RM3100_REG_CC_X ;
 int RM3100_REG_CMM ;
 int RM3100_REG_TMRC ;
 int RM3100_SAMP_NUM ;
 int RM3100_TMRC_OFFSET ;
 struct rm3100_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,int) ;
 int** rm3100_samp_rates ;
 int rm3100_set_cycle_count (struct rm3100_data*,int) ;

__attribute__((used)) static int rm3100_set_samp_freq(struct iio_dev *indio_dev, int val, int val2)
{
 struct rm3100_data *data = iio_priv(indio_dev);
 struct regmap *regmap = data->regmap;
 unsigned int cycle_count;
 int ret;
 int i;

 mutex_lock(&data->lock);

 ret = regmap_read(regmap, RM3100_REG_CC_X, &cycle_count);
 if (ret < 0)
  goto unlock_return;

 for (i = 0; i < RM3100_SAMP_NUM; i++) {
  if (val == rm3100_samp_rates[i][0] &&
      val2 == rm3100_samp_rates[i][1])
   break;
 }
 if (i == RM3100_SAMP_NUM) {
  ret = -EINVAL;
  goto unlock_return;
 }

 ret = regmap_write(regmap, RM3100_REG_TMRC, i + RM3100_TMRC_OFFSET);
 if (ret < 0)
  goto unlock_return;


 if (val == 600 && cycle_count == 200) {
  ret = rm3100_set_cycle_count(data, 100);
  if (ret < 0)
   goto unlock_return;
 } else if (val != 600 && cycle_count == 100) {
  ret = rm3100_set_cycle_count(data, 200);
  if (ret < 0)
   goto unlock_return;
 }

 if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {

  ret = regmap_write(regmap, RM3100_REG_CMM, 0);
  if (ret < 0)
   goto unlock_return;
  ret = regmap_write(data->regmap, RM3100_REG_CMM,
   (*indio_dev->active_scan_mask & 0x7) <<
   RM3100_CMM_AXIS_SHIFT | RM3100_CMM_START);
  if (ret < 0)
   goto unlock_return;
 }
 mutex_unlock(&data->lock);

 data->conversion_time = rm3100_samp_rates[i][2] * 2;
 return 0;

unlock_return:
 mutex_unlock(&data->lock);
 return ret;
}
