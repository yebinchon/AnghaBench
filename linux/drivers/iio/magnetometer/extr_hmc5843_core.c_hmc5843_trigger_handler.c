
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct hmc5843_data {int buffer; int lock; int regmap; } ;
typedef int irqreturn_t ;
typedef int __be16 ;


 int HMC5843_DATA_OUT_MSB_REGS ;
 int IRQ_HANDLED ;
 int hmc5843_wait_measurement (struct hmc5843_data*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct hmc5843_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int ,int) ;

__attribute__((used)) static irqreturn_t hmc5843_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct hmc5843_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->lock);
 ret = hmc5843_wait_measurement(data);
 if (ret < 0) {
  mutex_unlock(&data->lock);
  goto done;
 }

 ret = regmap_bulk_read(data->regmap, HMC5843_DATA_OUT_MSB_REGS,
          data->buffer, 3 * sizeof(__be16));

 mutex_unlock(&data->lock);
 if (ret < 0)
  goto done;

 iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
        iio_get_time_ns(indio_dev));

done:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
