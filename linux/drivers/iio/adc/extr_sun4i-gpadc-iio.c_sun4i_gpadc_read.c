
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_gpadc_iio {unsigned int fifo_data_irq; int adc_data; int temp_data; int mutex; int completion; } ;
struct TYPE_2__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;


 int ETIMEDOUT ;
 int disable_irq (unsigned int) ;
 int enable_irq (unsigned int) ;
 struct sun4i_gpadc_iio* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int sun4i_prepare_for_irq (struct iio_dev*,int,unsigned int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int sun4i_gpadc_read(struct iio_dev *indio_dev, int channel, int *val,
       unsigned int irq)
{
 struct sun4i_gpadc_iio *info = iio_priv(indio_dev);
 int ret;

 mutex_lock(&info->mutex);

 ret = sun4i_prepare_for_irq(indio_dev, channel, irq);
 if (ret)
  goto err;

 enable_irq(irq);







 if (!wait_for_completion_timeout(&info->completion,
      msecs_to_jiffies(1000))) {
  ret = -ETIMEDOUT;
  goto err;
 }

 if (irq == info->fifo_data_irq)
  *val = info->adc_data;
 else
  *val = info->temp_data;

 ret = 0;
 pm_runtime_mark_last_busy(indio_dev->dev.parent);

err:
 pm_runtime_put_autosuspend(indio_dev->dev.parent);
 disable_irq(irq);
 mutex_unlock(&info->mutex);

 return ret;
}
