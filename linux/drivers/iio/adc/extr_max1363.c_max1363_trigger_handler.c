
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct max1363_state {int (* recv ) (int ,int *,unsigned long) ;int client; TYPE_2__* chip_info; TYPE_1__* current_mode; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; scalar_t__ scan_timestamp; } ;
typedef int s64 ;
typedef int irqreturn_t ;
typedef int __u8 ;
struct TYPE_4__ {int bits; } ;
struct TYPE_3__ {int modemask; } ;


 int GFP_KERNEL ;
 int IRQ_HANDLED ;
 int MAX1363_MAX_CHANNELS ;
 unsigned long bitmap_weight (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct max1363_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;
 int stub1 (int ,int *,unsigned long) ;
 int stub2 (int ,int *,unsigned long) ;

__attribute__((used)) static irqreturn_t max1363_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct max1363_state *st = iio_priv(indio_dev);
 __u8 *rxbuf;
 int b_sent;
 size_t d_size;
 unsigned long numvals = bitmap_weight(st->current_mode->modemask,
           MAX1363_MAX_CHANNELS);


 if (st->chip_info->bits != 8)
  d_size = numvals*2;
 else
  d_size = numvals;
 if (indio_dev->scan_timestamp) {
  d_size += sizeof(s64);
  if (d_size % sizeof(s64))
   d_size += sizeof(s64) - (d_size % sizeof(s64));
 }




 if (numvals == 0)
  goto done;

 rxbuf = kmalloc(d_size, GFP_KERNEL);
 if (rxbuf == ((void*)0))
  goto done;
 if (st->chip_info->bits != 8)
  b_sent = st->recv(st->client, rxbuf, numvals * 2);
 else
  b_sent = st->recv(st->client, rxbuf, numvals);
 if (b_sent < 0)
  goto done_free;

 iio_push_to_buffers_with_timestamp(indio_dev, rxbuf,
        iio_get_time_ns(indio_dev));

done_free:
 kfree(rxbuf);
done:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
