
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct max44000_data {int lock; int regmap; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; int active_scan_mask; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MAX44000_REG_PRX_DATA ;
 int MAX44000_SCAN_INDEX_ALS ;
 int MAX44000_SCAN_INDEX_PRX ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct max44000_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int*,int ) ;
 int iio_trigger_notify_done (int ) ;
 int max44000_read_alsval (struct max44000_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static irqreturn_t max44000_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct max44000_data *data = iio_priv(indio_dev);
 u16 buf[8];
 int index = 0;
 unsigned int regval;
 int ret;

 mutex_lock(&data->lock);
 if (test_bit(MAX44000_SCAN_INDEX_ALS, indio_dev->active_scan_mask)) {
  ret = max44000_read_alsval(data);
  if (ret < 0)
   goto out_unlock;
  buf[index++] = ret;
 }
 if (test_bit(MAX44000_SCAN_INDEX_PRX, indio_dev->active_scan_mask)) {
  ret = regmap_read(data->regmap, MAX44000_REG_PRX_DATA, &regval);
  if (ret < 0)
   goto out_unlock;
  buf[index] = regval;
 }
 mutex_unlock(&data->lock);

 iio_push_to_buffers_with_timestamp(indio_dev, buf,
        iio_get_time_ns(indio_dev));
 iio_trigger_notify_done(indio_dev->trig);
 return IRQ_HANDLED;

out_unlock:
 mutex_unlock(&data->lock);
 iio_trigger_notify_done(indio_dev->trig);
 return IRQ_HANDLED;
}
