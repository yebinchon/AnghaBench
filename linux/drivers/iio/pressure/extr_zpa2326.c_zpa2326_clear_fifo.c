
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct iio_dev {int dummy; } ;


 int ZPA2326_PRESS_OUT_H_REG ;
 unsigned int ZPA2326_STATUS_FIFO_E ;
 int ZPA2326_STATUS_REG ;
 scalar_t__ iio_priv (struct iio_dev const*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int zpa2326_dbg (struct iio_dev const*,char*) ;
 int zpa2326_err (struct iio_dev const*,char*,int) ;

__attribute__((used)) static int zpa2326_clear_fifo(const struct iio_dev *indio_dev,
         unsigned int min_count)
{
 struct regmap *regs = ((struct zpa2326_private *)
          iio_priv(indio_dev))->regmap;
 int err;
 unsigned int val;

 if (!min_count) {




  err = regmap_read(regs, ZPA2326_STATUS_REG, &val);

  if (err < 0)
   goto err;

  if (val & ZPA2326_STATUS_FIFO_E)

   return 0;
 }


 do {




  err = regmap_read(regs, ZPA2326_PRESS_OUT_H_REG, &val);
  if (err < 0)
   goto err;

  if (min_count) {




   min_count--;
   continue;
  }

  err = regmap_read(regs, ZPA2326_STATUS_REG, &val);
  if (err < 0)
   goto err;

 } while (!(val & ZPA2326_STATUS_FIFO_E));

 zpa2326_dbg(indio_dev, "FIFO cleared");

 return 0;

err:
 zpa2326_err(indio_dev, "failed to clear FIFO (%d)", err);

 return err;
}
