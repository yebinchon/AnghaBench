
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt3001 {int lock; int low_thresh_mantissa; int low_thresh_exp; int high_thresh_mantissa; int high_thresh_exp; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 int IIO_VAL_INT_PLUS_MICRO ;
 struct opt3001* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opt3001_to_iio_ret (struct opt3001*,int ,int ,int*,int*) ;

__attribute__((used)) static int opt3001_read_event_value(struct iio_dev *iio,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir, enum iio_event_info info,
  int *val, int *val2)
{
 struct opt3001 *opt = iio_priv(iio);
 int ret = IIO_VAL_INT_PLUS_MICRO;

 mutex_lock(&opt->lock);

 switch (dir) {
 case 128:
  opt3001_to_iio_ret(opt, opt->high_thresh_exp,
    opt->high_thresh_mantissa, val, val2);
  break;
 case 129:
  opt3001_to_iio_ret(opt, opt->low_thresh_exp,
    opt->low_thresh_mantissa, val, val2);
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&opt->lock);

 return ret;
}
