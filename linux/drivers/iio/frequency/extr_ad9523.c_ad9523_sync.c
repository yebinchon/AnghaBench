
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int AD9523_STATUS_SIGNALS ;
 int AD9523_STATUS_SIGNALS_SYNC_MAN_CTRL ;
 int ad9523_io_update (struct iio_dev*) ;
 int ad9523_read (struct iio_dev*,int ) ;
 int ad9523_write (struct iio_dev*,int ,int) ;

__attribute__((used)) static int ad9523_sync(struct iio_dev *indio_dev)
{
 int ret, tmp;

 ret = ad9523_read(indio_dev, AD9523_STATUS_SIGNALS);
 if (ret < 0)
  return ret;

 tmp = ret;
 tmp |= AD9523_STATUS_SIGNALS_SYNC_MAN_CTRL;

 ret = ad9523_write(indio_dev, AD9523_STATUS_SIGNALS, tmp);
 if (ret < 0)
  return ret;

 ad9523_io_update(indio_dev);
 tmp &= ~AD9523_STATUS_SIGNALS_SYNC_MAN_CTRL;

 ret = ad9523_write(indio_dev, AD9523_STATUS_SIGNALS, tmp);
 if (ret < 0)
  return ret;

 return ad9523_io_update(indio_dev);
}
