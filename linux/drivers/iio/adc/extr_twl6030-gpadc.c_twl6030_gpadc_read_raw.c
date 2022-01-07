
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl6030_gpadc_data {int lock; int irq_complete; int dev; TYPE_1__* pdata; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int (* start_conversion ) (int ) ;} ;


 int EINTR ;
 int EIO ;
 int ETIMEDOUT ;


 int IIO_VAL_INT ;
 int dev_err (int ,char*) ;
 struct twl6030_gpadc_data* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ) ;
 int twl6030_gpadc_get_processed (struct twl6030_gpadc_data*,int ,int*) ;
 int twl6030_gpadc_get_raw (struct twl6030_gpadc_data*,int ,int*) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int twl6030_gpadc_read_raw(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        int *val, int *val2, long mask)
{
 struct twl6030_gpadc_data *gpadc = iio_priv(indio_dev);
 int ret;
 long timeout;

 mutex_lock(&gpadc->lock);

 ret = gpadc->pdata->start_conversion(chan->channel);
 if (ret) {
  dev_err(gpadc->dev, "failed to start conversion\n");
  goto err;
 }

 timeout = wait_for_completion_interruptible_timeout(
    &gpadc->irq_complete, msecs_to_jiffies(5000));
 if (timeout == 0) {
  ret = -ETIMEDOUT;
  goto err;
 } else if (timeout < 0) {
  ret = -EINTR;
  goto err;
 }

 switch (mask) {
 case 128:
  ret = twl6030_gpadc_get_raw(gpadc, chan->channel, val);
  ret = ret ? -EIO : IIO_VAL_INT;
  break;

 case 129:
  ret = twl6030_gpadc_get_processed(gpadc, chan->channel, val);
  ret = ret ? -EIO : IIO_VAL_INT;
  break;

 default:
  break;
 }
err:
 mutex_unlock(&gpadc->lock);

 return ret;
}
