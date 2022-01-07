
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; int dev; } ;
struct iio_chan_spec {int address; } ;
struct exynos_adc {int value; TYPE_1__* data; int completion; } ;
struct TYPE_2__ {int (* init_hw ) (struct exynos_adc*) ;int (* start_conv ) (struct exynos_adc*,int ) ;} ;


 int EINVAL ;
 int ETIMEDOUT ;
 int EXYNOS_ADC_TIMEOUT ;
 long IIO_CHAN_INFO_RAW ;
 int IIO_VAL_INT ;
 int dev_warn (int *,char*) ;
 struct exynos_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int stub1 (struct exynos_adc*,int ) ;
 int stub2 (struct exynos_adc*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int exynos_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val,
    int *val2,
    long mask)
{
 struct exynos_adc *info = iio_priv(indio_dev);
 unsigned long timeout;
 int ret;

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 mutex_lock(&indio_dev->mlock);
 reinit_completion(&info->completion);


 if (info->data->start_conv)
  info->data->start_conv(info, chan->address);

 timeout = wait_for_completion_timeout(&info->completion,
           EXYNOS_ADC_TIMEOUT);
 if (timeout == 0) {
  dev_warn(&indio_dev->dev, "Conversion timed out! Resetting\n");
  if (info->data->init_hw)
   info->data->init_hw(info);
  ret = -ETIMEDOUT;
 } else {
  *val = info->value;
  *val2 = 0;
  ret = IIO_VAL_INT;
 }

 mutex_unlock(&indio_dev->mlock);

 return ret;
}
