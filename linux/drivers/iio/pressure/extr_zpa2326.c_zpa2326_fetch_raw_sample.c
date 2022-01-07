
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zpa2326_private {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
typedef int __le16 ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int ZPA2326_PRESS_OUT_XL_REG ;
 int ZPA2326_TEMP_OUT_L_REG ;
 scalar_t__ iio_priv (struct iio_dev const*) ;
 scalar_t__ le16_to_cpup (int *) ;
 int regmap_bulk_read (struct regmap*,int ,int*,int) ;
 int zpa2326_dbg (struct iio_dev const*,char*) ;
 int zpa2326_warn (struct iio_dev const*,char*,int) ;

__attribute__((used)) static int zpa2326_fetch_raw_sample(const struct iio_dev *indio_dev,
        enum iio_chan_type type,
        int *value)
{
 struct regmap *regs = ((struct zpa2326_private *)
          iio_priv(indio_dev))->regmap;
 int err;

 switch (type) {
 case 129:
  zpa2326_dbg(indio_dev, "fetching raw pressure sample");

  err = regmap_bulk_read(regs, ZPA2326_PRESS_OUT_XL_REG, value,
           3);
  if (err) {
   zpa2326_warn(indio_dev, "failed to fetch pressure (%d)",
         err);
   return err;
  }


  *value = (((u8 *)value)[2] << 16) | (((u8 *)value)[1] << 8) |
    ((u8 *)value)[0];

  return IIO_VAL_INT;

 case 128:
  zpa2326_dbg(indio_dev, "fetching raw temperature sample");

  err = regmap_bulk_read(regs, ZPA2326_TEMP_OUT_L_REG, value, 2);
  if (err) {
   zpa2326_warn(indio_dev,
         "failed to fetch temperature (%d)", err);
   return err;
  }


  *value = (int)le16_to_cpup((__le16 *)value);

  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
