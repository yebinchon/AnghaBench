
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int HMC5843_MODE_SLEEP ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int hmc5843_set_mode (int ,int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;

int hmc5843_common_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);


 hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);

 return 0;
}
