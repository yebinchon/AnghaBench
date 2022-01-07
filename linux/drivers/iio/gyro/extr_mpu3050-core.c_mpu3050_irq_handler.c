
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int hw_timestamp; int hw_irq_trigger; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct mpu3050* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static irqreturn_t mpu3050_irq_handler(int irq, void *p)
{
 struct iio_trigger *trig = p;
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct mpu3050 *mpu3050 = iio_priv(indio_dev);

 if (!mpu3050->hw_irq_trigger)
  return IRQ_NONE;


 mpu3050->hw_timestamp = iio_get_time_ns(indio_dev);

 return IRQ_WAKE_THREAD;
}
