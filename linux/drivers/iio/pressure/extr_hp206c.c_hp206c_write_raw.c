
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct hp206c_data {int mutex; void* pres_osr_index; void* temp_osr_index; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 long IIO_CHAN_INFO_OVERSAMPLING_RATIO ;


 void* find_closest_descending (int,int ,int ) ;
 int hp206c_osr_rates ;
 struct hp206c_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hp206c_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 int ret = 0;
 struct hp206c_data *data = iio_priv(indio_dev);

 if (mask != IIO_CHAN_INFO_OVERSAMPLING_RATIO)
  return -EINVAL;
 mutex_lock(&data->mutex);
 switch (chan->type) {
 case 128:
  data->temp_osr_index = find_closest_descending(val,
   hp206c_osr_rates, ARRAY_SIZE(hp206c_osr_rates));
  break;
 case 129:
  data->pres_osr_index = find_closest_descending(val,
   hp206c_osr_rates, ARRAY_SIZE(hp206c_osr_rates));
  break;
 default:
  ret = -EINVAL;
 }
 mutex_unlock(&data->mutex);
 return ret;
}
