
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmp91000_data {int* buffer; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LMP91000_REG_MODECN_3LEAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct lmp91000_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int*,int ) ;
 int iio_trigger_notify_done (int ) ;
 int lmp91000_read (struct lmp91000_data*,int ,int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static irqreturn_t lmp91000_buffer_handler(int irq, void *private)
{
 struct iio_poll_func *pf = private;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct lmp91000_data *data = iio_priv(indio_dev);
 int ret, val;

 memset(data->buffer, 0, sizeof(data->buffer));

 ret = lmp91000_read(data, LMP91000_REG_MODECN_3LEAD, &val);
 if (!ret) {
  data->buffer[0] = val;
  iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
         iio_get_time_ns(indio_dev));
 }

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
