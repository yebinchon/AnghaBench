
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {scalar_t__ irq; int timestamp; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct zpa2326_private* iio_priv (struct iio_dev*) ;
 int iio_trigger_notify_done (int ) ;
 int iio_trigger_using_own (struct iio_dev*) ;
 int zpa2326_fill_sample_buffer (struct iio_dev*,struct zpa2326_private*) ;
 scalar_t__ zpa2326_poll_oneshot_completion (struct iio_dev*) ;
 int zpa2326_sleep (struct iio_dev*) ;
 scalar_t__ zpa2326_start_oneshot (struct iio_dev*) ;
 scalar_t__ zpa2326_wait_oneshot_completion (struct iio_dev*,struct zpa2326_private*) ;

__attribute__((used)) static irqreturn_t zpa2326_trigger_handler(int irq, void *data)
{
 struct iio_dev *indio_dev = ((struct iio_poll_func *)
          data)->indio_dev;
 struct zpa2326_private *priv = iio_priv(indio_dev);
 bool cont;






 cont = iio_trigger_using_own(indio_dev);

 if (!cont) {

  if (zpa2326_start_oneshot(indio_dev))
   goto out;


  if (priv->irq <= 0) {

   if (zpa2326_poll_oneshot_completion(indio_dev))
    goto out;


   priv->timestamp = iio_get_time_ns(indio_dev);
  } else {

   if (zpa2326_wait_oneshot_completion(indio_dev, priv))
    goto out;
  }
 }


 zpa2326_fill_sample_buffer(indio_dev, priv);

out:
 if (!cont)

  zpa2326_sleep(indio_dev);


 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
