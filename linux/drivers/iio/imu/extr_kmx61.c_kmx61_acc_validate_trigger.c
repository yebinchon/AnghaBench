
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmx61_data {struct iio_trigger* motion_trig; struct iio_trigger* acc_dready_trig; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 struct kmx61_data* kmx61_get_data (struct iio_dev*) ;

__attribute__((used)) static int kmx61_acc_validate_trigger(struct iio_dev *indio_dev,
          struct iio_trigger *trig)
{
 struct kmx61_data *data = kmx61_get_data(indio_dev);

 if (data->acc_dready_trig != trig && data->motion_trig != trig)
  return -EINVAL;

 return 0;
}
