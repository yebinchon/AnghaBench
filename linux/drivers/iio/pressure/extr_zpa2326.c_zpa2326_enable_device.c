
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {int regmap; } ;
struct iio_dev {int dummy; } ;


 int ZPA2326_CTRL_REG0_ENABLE ;
 int ZPA2326_CTRL_REG0_REG ;
 scalar_t__ iio_priv (struct iio_dev const*) ;
 int regmap_write (int ,int ,int ) ;
 int zpa2326_dbg (struct iio_dev const*,char*) ;
 int zpa2326_err (struct iio_dev const*,char*,int) ;

__attribute__((used)) static int zpa2326_enable_device(const struct iio_dev *indio_dev)
{
 int err;

 err = regmap_write(((struct zpa2326_private *)
       iio_priv(indio_dev))->regmap,
       ZPA2326_CTRL_REG0_REG, ZPA2326_CTRL_REG0_ENABLE);
 if (err) {
  zpa2326_err(indio_dev, "failed to enable device (%d)", err);
  return err;
 }

 zpa2326_dbg(indio_dev, "enabled");

 return 0;
}
