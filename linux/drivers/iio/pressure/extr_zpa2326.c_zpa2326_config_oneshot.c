
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct zpa2326_private {struct regmap* regmap; } ;
struct zpa2326_frequency {int hz; int odr; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;


 scalar_t__ ZPA2326_CTRL_REG1_MASK_DATA_READY ;
 int ZPA2326_CTRL_REG1_REG ;
 int ZPA2326_CTRL_REG3_REG ;
 int dev_err (int ,char*,int) ;
 scalar_t__ iio_priv (struct iio_dev const*) ;
 int regmap_write (struct regmap*,int ,int ) ;
 int zpa2326_dbg (struct iio_dev const*,char*,int ) ;
 struct zpa2326_frequency* zpa2326_highest_frequency () ;

__attribute__((used)) static int zpa2326_config_oneshot(const struct iio_dev *indio_dev,
      int irq)
{
 struct regmap *regs = ((struct zpa2326_private *)
      iio_priv(indio_dev))->regmap;
 const struct zpa2326_frequency *freq = zpa2326_highest_frequency();
 int err;


 err = regmap_write(regs, ZPA2326_CTRL_REG3_REG, freq->odr);
 if (err)
  return err;

 if (irq > 0) {

  err = regmap_write(regs, ZPA2326_CTRL_REG1_REG,
       (u8)~ZPA2326_CTRL_REG1_MASK_DATA_READY);

  if (err) {
   dev_err(indio_dev->dev.parent,
    "failed to setup one shot mode (%d)", err);
   return err;
  }
 }

 zpa2326_dbg(indio_dev, "one shot mode setup @%dHz", freq->hz);

 return 0;
}
