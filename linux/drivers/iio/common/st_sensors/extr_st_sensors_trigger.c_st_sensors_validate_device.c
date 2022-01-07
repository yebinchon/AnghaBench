
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

int st_sensors_validate_device(struct iio_trigger *trig,
          struct iio_dev *indio_dev)
{
 struct iio_dev *indio = iio_trigger_get_drvdata(trig);

 if (indio != indio_dev)
  return -EINVAL;

 return 0;
}
