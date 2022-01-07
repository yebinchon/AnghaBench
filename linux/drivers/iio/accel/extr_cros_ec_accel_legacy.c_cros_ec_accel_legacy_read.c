
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
struct cros_ec_sensors_core_state {int (* read_ec_sensors_data ) (struct iio_dev*,int,int*) ;int cmd_lock; int type; } ;
typedef int s16 ;


 int ACCEL_LEGACY_NSCALE ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int MOTIONSENSE_TYPE_ACCEL ;
 int WARN_ON (int) ;
 int cros_ec_sensors_core_read (struct cros_ec_sensors_core_state*,struct iio_chan_spec const*,int*,int*,long) ;
 struct cros_ec_sensors_core_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct iio_dev*,int,int*) ;

__attribute__((used)) static int cros_ec_accel_legacy_read(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2, long mask)
{
 struct cros_ec_sensors_core_state *st = iio_priv(indio_dev);
 s16 data = 0;
 int ret;
 int idx = chan->scan_index;

 mutex_lock(&st->cmd_lock);

 switch (mask) {
 case 129:
  ret = st->read_ec_sensors_data(indio_dev, 1 << idx, &data);
  if (ret < 0)
   break;
  ret = IIO_VAL_INT;
  *val = data;
  break;
 case 128:
  WARN_ON(st->type != MOTIONSENSE_TYPE_ACCEL);
  *val = 0;
  *val2 = ACCEL_LEGACY_NSCALE;
  ret = IIO_VAL_INT_PLUS_NANO;
  break;
 case 130:

  *val = 0;
  ret = IIO_VAL_INT;
  break;
 default:
  ret = cros_ec_sensors_core_read(st, chan, val, val2,
    mask);
  break;
 }
 mutex_unlock(&st->cmd_lock);

 return ret;
}
