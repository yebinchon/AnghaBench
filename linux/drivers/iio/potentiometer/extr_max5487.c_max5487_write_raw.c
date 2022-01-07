
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max5487_data {int spi; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 int MAX5487_MAX_POS ;
 struct max5487_data* iio_priv (struct iio_dev*) ;
 int max5487_write_cmd (int ,int) ;

__attribute__((used)) static int max5487_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct max5487_data *data = iio_priv(indio_dev);

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 if (val < 0 || val > MAX5487_MAX_POS)
  return -EINVAL;

 return max5487_write_cmd(data->spi, chan->address | val);
}
