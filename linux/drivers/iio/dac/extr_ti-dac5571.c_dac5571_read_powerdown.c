
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct dac5571_data {int powerdown; } ;
typedef int ssize_t ;


 struct dac5571_data* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t dac5571_read_powerdown(struct iio_dev *indio_dev,
          uintptr_t private,
          const struct iio_chan_spec *chan,
          char *buf)
{
 struct dac5571_data *data = iio_priv(indio_dev);

 return sprintf(buf, "%d\n", data->powerdown);
}
