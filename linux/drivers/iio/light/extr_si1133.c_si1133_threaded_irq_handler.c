
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct si1133_data {scalar_t__ scan_mask; int completion; int regmap; } ;
struct iio_dev {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SI1133_REG_IRQ_STATUS ;
 int complete (int *) ;
 int dev_err_ratelimited (int *,char*) ;
 struct si1133_data* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,scalar_t__*) ;

__attribute__((used)) static irqreturn_t si1133_threaded_irq_handler(int irq, void *private)
{
 struct iio_dev *iio_dev = private;
 struct si1133_data *data = iio_priv(iio_dev);
 u32 irq_status;
 int err;

 err = regmap_read(data->regmap, SI1133_REG_IRQ_STATUS, &irq_status);
 if (err) {
  dev_err_ratelimited(&iio_dev->dev, "Error reading IRQ\n");
  goto out;
 }

 if (irq_status != data->scan_mask)
  return IRQ_NONE;

out:
 complete(&data->completion);

 return IRQ_HANDLED;
}
