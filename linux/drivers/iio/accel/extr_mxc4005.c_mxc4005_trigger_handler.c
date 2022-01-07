
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc4005_data {int buffer; } ;
struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct mxc4005_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mxc4005_read_xyz (struct mxc4005_data*) ;

__attribute__((used)) static irqreturn_t mxc4005_trigger_handler(int irq, void *private)
{
 struct iio_poll_func *pf = private;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct mxc4005_data *data = iio_priv(indio_dev);
 int ret;

 ret = mxc4005_read_xyz(data);
 if (ret < 0)
  goto err;

 iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
        pf->timestamp);

err:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
