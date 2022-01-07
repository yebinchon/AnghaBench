
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; int masklength; int active_scan_mask; int scan_bytes; } ;
typedef int irqreturn_t ;


 int GFP_KERNEL ;
 int IRQ_HANDLED ;
 int bitmap_empty (int ,int ) ;
 int bitmap_weight (int ,int ) ;
 int * fakedata ;
 int find_next_bit (int ,int ,int) ;
 int iio_get_time_ns (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static irqreturn_t iio_simple_dummy_trigger_h(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 int len = 0;
 u16 *data;

 data = kmalloc(indio_dev->scan_bytes, GFP_KERNEL);
 if (!data)
  goto done;

 if (!bitmap_empty(indio_dev->active_scan_mask, indio_dev->masklength)) {
  int i, j;

  for (i = 0, j = 0;
       i < bitmap_weight(indio_dev->active_scan_mask,
           indio_dev->masklength);
       i++, j++) {
   j = find_next_bit(indio_dev->active_scan_mask,
       indio_dev->masklength, j);

   data[i] = fakedata[j];
   len += 2;
  }
 }

 iio_push_to_buffers_with_timestamp(indio_dev, data,
        iio_get_time_ns(indio_dev));

 kfree(data);

done:




 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
