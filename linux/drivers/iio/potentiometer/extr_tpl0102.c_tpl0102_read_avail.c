
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpl0102_data {TYPE_1__* cfg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_2__ {int* avail; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int IIO_AVAIL_RANGE ;

 int IIO_VAL_INT ;
 struct tpl0102_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int tpl0102_read_avail(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         const int **vals, int *type, int *length,
         long mask)
{
 struct tpl0102_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  *length = ARRAY_SIZE(data->cfg->avail);
  *vals = data->cfg->avail;
  *type = IIO_VAL_INT;
  return IIO_AVAIL_RANGE;
 }

 return -EINVAL;
}
