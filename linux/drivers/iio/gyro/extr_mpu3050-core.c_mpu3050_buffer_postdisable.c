
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int dev; } ;
struct iio_dev {int dummy; } ;


 struct mpu3050* iio_priv (struct iio_dev*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int mpu3050_buffer_postdisable(struct iio_dev *indio_dev)
{
 struct mpu3050 *mpu3050 = iio_priv(indio_dev);

 pm_runtime_mark_last_busy(mpu3050->dev);
 pm_runtime_put_autosuspend(mpu3050->dev);

 return 0;
}
