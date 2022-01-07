
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int hw_irq_trigger; int dev; } ;
struct iio_dev {int dummy; } ;


 struct mpu3050* iio_priv (struct iio_dev*) ;
 int mpu3050_set_8khz_samplerate (struct mpu3050*) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int mpu3050_buffer_preenable(struct iio_dev *indio_dev)
{
 struct mpu3050 *mpu3050 = iio_priv(indio_dev);

 pm_runtime_get_sync(mpu3050->dev);


 if (!mpu3050->hw_irq_trigger)
  return mpu3050_set_8khz_samplerate(mpu3050);

 return 0;
}
