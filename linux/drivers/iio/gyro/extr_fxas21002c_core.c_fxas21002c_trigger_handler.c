
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct fxas21002c_data {int lock; int timestamp; int buffer; int regmap; } ;
typedef int s16 ;
typedef int irqreturn_t ;


 int CHANNEL_SCAN_MAX ;
 int FXAS21002C_REG_OUT_X_MSB ;
 int IRQ_HANDLED ;
 struct fxas21002c_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int ,int) ;

__attribute__((used)) static irqreturn_t fxas21002c_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct fxas21002c_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_bulk_read(data->regmap, FXAS21002C_REG_OUT_X_MSB,
          data->buffer, CHANNEL_SCAN_MAX * sizeof(s16));
 if (ret < 0)
  goto out_unlock;

 iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
        data->timestamp);

out_unlock:
 mutex_unlock(&data->lock);

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
