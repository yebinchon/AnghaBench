
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct zpa2326_private {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct iio_dev {int dummy; } ;


 scalar_t__ ZPA2326_FIFO_DEPTH ;
 int ZPA2326_PRESS_OUT_XL_REG ;
 unsigned int ZPA2326_STATUS_FIFO_E ;
 unsigned int ZPA2326_STATUS_P_OR ;
 int ZPA2326_STATUS_REG ;
 scalar_t__ iio_priv (struct iio_dev const*) ;
 int regmap_bulk_read (struct regmap*,int ,scalar_t__*,int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int zpa2326_clear_fifo (struct iio_dev const*,scalar_t__) ;
 int zpa2326_dbg (struct iio_dev const*,char*,int) ;
 int zpa2326_warn (struct iio_dev const*,char*) ;

__attribute__((used)) static int zpa2326_dequeue_pressure(const struct iio_dev *indio_dev,
        u32 *pressure)
{
 struct regmap *regs = ((struct zpa2326_private *)
          iio_priv(indio_dev))->regmap;
 unsigned int val;
 int err;
 int cleared = -1;

 err = regmap_read(regs, ZPA2326_STATUS_REG, &val);
 if (err < 0)
  return err;

 *pressure = 0;

 if (val & ZPA2326_STATUS_P_OR) {




  zpa2326_warn(indio_dev, "FIFO overflow");

  err = regmap_bulk_read(regs, ZPA2326_PRESS_OUT_XL_REG, pressure,
           3);
  if (err)
   return err;



  return zpa2326_clear_fifo(indio_dev, (16U) - 1);
 }






 do {
  err = regmap_bulk_read(regs, ZPA2326_PRESS_OUT_XL_REG, pressure,
           3);
  if (err)
   return err;

  err = regmap_read(regs, ZPA2326_STATUS_REG, &val);
  if (err < 0)
   return err;

  cleared++;
 } while (!(val & ZPA2326_STATUS_FIFO_E));

 if (cleared)




  zpa2326_dbg(indio_dev, "cleared %d FIFO entries", cleared);

 return 0;
}
