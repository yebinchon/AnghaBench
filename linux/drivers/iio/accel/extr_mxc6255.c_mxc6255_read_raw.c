
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxc6255_data {TYPE_1__* client; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int MXC6255_SCALE ;
 int dev_err (int *,char*,int ) ;
 struct mxc6255_data* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sign_extend32 (unsigned int,int) ;

__attribute__((used)) static int mxc6255_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mxc6255_data *data = iio_priv(indio_dev);
 unsigned int reg;
 int ret;

 switch (mask) {
 case 129:
  ret = regmap_read(data->regmap, chan->address, &reg);
  if (ret < 0) {
   dev_err(&data->client->dev,
    "Error reading reg %lu\n", chan->address);
   return ret;
  }

  *val = sign_extend32(reg, 7);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = MXC6255_SCALE;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
