
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct bmc150_magn_data {int mutex; int buffer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bmc150_magn_read_xyz (struct bmc150_magn_data*,int ) ;
 struct bmc150_magn_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t bmc150_magn_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct bmc150_magn_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->mutex);
 ret = bmc150_magn_read_xyz(data, data->buffer);
 if (ret < 0)
  goto err;

 iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
        pf->timestamp);

err:
 mutex_unlock(&data->mutex);
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
