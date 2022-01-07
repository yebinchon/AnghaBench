
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adxl372_state {int fifo_mode; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adxl372_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t adxl372_get_fifo_enabled(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct adxl372_state *st = iio_priv(indio_dev);

 return sprintf(buf, "%d\n", st->fifo_mode);
}
