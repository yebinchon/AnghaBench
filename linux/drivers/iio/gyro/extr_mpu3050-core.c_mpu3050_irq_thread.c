
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int dev; int map; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MPU3050_INT_STATUS ;
 unsigned int MPU3050_INT_STATUS_RAW_RDY ;
 int dev_err (int ,char*) ;
 struct mpu3050* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int iio_trigger_poll_chained (void*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t mpu3050_irq_thread(int irq, void *p)
{
 struct iio_trigger *trig = p;
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct mpu3050 *mpu3050 = iio_priv(indio_dev);
 unsigned int val;
 int ret;


 ret = regmap_read(mpu3050->map, MPU3050_INT_STATUS, &val);
 if (ret) {
  dev_err(mpu3050->dev, "error reading IRQ status\n");
  return IRQ_HANDLED;
 }
 if (!(val & MPU3050_INT_STATUS_RAW_RDY))
  return IRQ_NONE;

 iio_trigger_poll_chained(p);

 return IRQ_HANDLED;
}
