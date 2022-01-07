
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int masklength; int trig; TYPE_1__* channels; int active_scan_mask; } ;
struct hx711_data {int lock; int * buffer; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int channel; } ;


 int IRQ_HANDLED ;
 int hx711_reset_read (struct hx711_data*,int ) ;
 struct hx711_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static irqreturn_t hx711_trigger(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct hx711_data *hx711_data = iio_priv(indio_dev);
 int i, j = 0;

 mutex_lock(&hx711_data->lock);

 memset(hx711_data->buffer, 0, sizeof(hx711_data->buffer));

 for (i = 0; i < indio_dev->masklength; i++) {
  if (!test_bit(i, indio_dev->active_scan_mask))
   continue;

  hx711_data->buffer[j] = hx711_reset_read(hx711_data,
     indio_dev->channels[i].channel);
  j++;
 }

 iio_push_to_buffers_with_timestamp(indio_dev, hx711_data->buffer,
       pf->timestamp);

 mutex_unlock(&hx711_data->lock);

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
