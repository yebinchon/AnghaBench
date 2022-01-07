
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; int address; } ;
struct atlas_data {int regmap; } ;
typedef int reg ;
typedef int __be32 ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 scalar_t__ IIO_TEMP ;
 int cpu_to_be32 (int) ;
 struct atlas_data* iio_priv (struct iio_dev*) ;
 int regmap_bulk_write (int ,int ,int *,int) ;

__attribute__((used)) static int atlas_write_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int val, int val2, long mask)
{
 struct atlas_data *data = iio_priv(indio_dev);
 __be32 reg = cpu_to_be32(val / 10);

 if (val2 != 0 || val < 0 || val > 20000)
  return -EINVAL;

 if (mask != IIO_CHAN_INFO_RAW || chan->type != IIO_TEMP)
  return -EINVAL;

 return regmap_bulk_write(data->regmap, chan->address,
     &reg, sizeof(reg));
}
