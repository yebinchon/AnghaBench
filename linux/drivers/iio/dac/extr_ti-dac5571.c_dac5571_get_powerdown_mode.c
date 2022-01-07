
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct dac5571_data {int powerdown_mode; } ;


 struct dac5571_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dac5571_get_powerdown_mode(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan)
{
 struct dac5571_data *data = iio_priv(indio_dev);

 return data->powerdown_mode;
}
