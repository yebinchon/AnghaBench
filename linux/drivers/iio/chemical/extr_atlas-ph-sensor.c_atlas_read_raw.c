
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;
struct atlas_data {int regmap; } ;
typedef int reg ;
typedef int __be32 ;


 int EINVAL ;






 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;

 int atlas_read_measurement (struct atlas_data*,int ,int *) ;
 int be32_to_cpu (int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct atlas_data* iio_priv (struct iio_dev*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int atlas_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct atlas_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 134: {
  int ret;
  __be32 reg;

  switch (chan->type) {
  case 129:
   ret = regmap_bulk_read(data->regmap, chan->address,
           (u8 *) &reg, sizeof(reg));
   break;
  case 130:
  case 132:
  case 131:
  case 128:
   ret = iio_device_claim_direct_mode(indio_dev);
   if (ret)
    return ret;

   ret = atlas_read_measurement(data, chan->address, &reg);

   iio_device_release_direct_mode(indio_dev);
   break;
  default:
   ret = -EINVAL;
  }

  if (!ret) {
   *val = be32_to_cpu(reg);
   ret = IIO_VAL_INT;
  }
  return ret;
 }
 case 133:
  switch (chan->type) {
  case 129:
   *val = 10;
   return IIO_VAL_INT;
  case 130:
   *val = 1;
   *val2 = 1000;
   break;
  case 131:
   *val = 1;
   *val2 = 100000;
   break;
  case 132:
   *val = 0;
   *val2 = 1000;
   return IIO_VAL_INT_PLUS_NANO;
  case 128:
   *val = 1;
   *val2 = 10;
   break;
  default:
   return -EINVAL;
  }
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
