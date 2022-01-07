
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct bmc150_accel_data {TYPE_1__* triggers; } ;
struct TYPE_2__ {struct iio_trigger* indio_trig; } ;


 int BMC150_ACCEL_TRIGGERS ;
 int EINVAL ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bmc150_accel_validate_trigger(struct iio_dev *indio_dev,
      struct iio_trigger *trig)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 int i;

 for (i = 0; i < BMC150_ACCEL_TRIGGERS; i++) {
  if (data->triggers[i].indio_trig == trig)
   return 0;
 }

 return -EINVAL;
}
