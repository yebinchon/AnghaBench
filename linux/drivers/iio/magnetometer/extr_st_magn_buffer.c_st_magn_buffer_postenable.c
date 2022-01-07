
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int iio_triggered_buffer_postenable (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;
 int st_sensors_set_enable (struct iio_dev*,int) ;

__attribute__((used)) static int st_magn_buffer_postenable(struct iio_dev *indio_dev)
{
 int err;

 err = iio_triggered_buffer_postenable(indio_dev);
 if (err < 0)
  return err;

 err = st_sensors_set_enable(indio_dev, 1);
 if (err < 0)
  goto st_magn_buffer_predisable;

 return 0;

st_magn_buffer_predisable:
 iio_triggered_buffer_predisable(indio_dev);
 return err;
}
