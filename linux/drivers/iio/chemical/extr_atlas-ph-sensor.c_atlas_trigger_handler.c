
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct atlas_data {int buffer; TYPE_1__* chip; int regmap; } ;
typedef int irqreturn_t ;
typedef int __be32 ;
struct TYPE_2__ {int num_channels; int data_reg; } ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct atlas_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static irqreturn_t atlas_trigger_handler(int irq, void *private)
{
 struct iio_poll_func *pf = private;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct atlas_data *data = iio_priv(indio_dev);
 int ret;

 ret = regmap_bulk_read(data->regmap, data->chip->data_reg,
         (u8 *) &data->buffer,
         sizeof(__be32) * (data->chip->num_channels - 2));

 if (!ret)
  iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
    iio_get_time_ns(indio_dev));

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
