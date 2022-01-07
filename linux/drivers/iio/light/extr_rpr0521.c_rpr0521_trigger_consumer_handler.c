
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rpr0521_data {TYPE_1__* client; int regmap; scalar_t__ irq_timestamp; } ;
struct iio_poll_func {scalar_t__ timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int RPR0521_REG_PXS_DATA ;
 int dev_err (int *,char*) ;
 scalar_t__ iio_get_time_ns (struct iio_dev*) ;
 struct rpr0521_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,scalar_t__) ;
 int iio_trigger_notify_done (int ) ;
 scalar_t__ iio_trigger_using_own (struct iio_dev*) ;
 int regmap_bulk_read (int ,int ,int **,int) ;

__attribute__((used)) static irqreturn_t rpr0521_trigger_consumer_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct rpr0521_data *data = iio_priv(indio_dev);
 int err;

 u8 buffer[16];


 if (iio_trigger_using_own(indio_dev) && data->irq_timestamp) {
  pf->timestamp = data->irq_timestamp;
  data->irq_timestamp = 0;
 }

 if (!pf->timestamp)
  pf->timestamp = iio_get_time_ns(indio_dev);

 err = regmap_bulk_read(data->regmap, RPR0521_REG_PXS_DATA,
  &buffer,
  (3 * 2) + 1);
 if (!err)
  iio_push_to_buffers_with_timestamp(indio_dev,
         buffer, pf->timestamp);
 else
  dev_err(&data->client->dev,
   "Trigger consumer can't read from sensor.\n");
 pf->timestamp = 0;

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
