
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rescale {int source; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int IIO_VAL_INT ;
 struct rescale* iio_priv (struct iio_dev*) ;
 int iio_read_avail_channel_raw (int ,int const**,int*) ;

__attribute__((used)) static int rescale_read_avail(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         const int **vals, int *type, int *length,
         long mask)
{
 struct rescale *rescale = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  *type = IIO_VAL_INT;
  return iio_read_avail_channel_raw(rescale->source,
        vals, length);
 default:
  return -EINVAL;
 }
}
