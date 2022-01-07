
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {int irq; scalar_t__ waken; } ;
struct iio_dev {int dummy; } ;


 struct zpa2326_private* iio_priv (struct iio_dev*) ;
 int iio_trigger_using_own (struct iio_dev*) ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;
 int zpa2326_clear_fifo (struct iio_dev*,int ) ;
 int zpa2326_config_oneshot (struct iio_dev*,int ) ;
 int zpa2326_err (struct iio_dev*,char*,int) ;

__attribute__((used)) static int zpa2326_postenable_buffer(struct iio_dev *indio_dev)
{
 const struct zpa2326_private *priv = iio_priv(indio_dev);
 int err;

 if (!priv->waken) {




  err = zpa2326_clear_fifo(indio_dev, 0);
  if (err)
   goto err;
 }

 if (!iio_trigger_using_own(indio_dev) && priv->waken) {




  err = zpa2326_config_oneshot(indio_dev, priv->irq);
  if (err)
   goto err;
 }


 err = iio_triggered_buffer_postenable(indio_dev);
 if (err)
  goto err;

 return 0;

err:
 zpa2326_err(indio_dev, "failed to enable buffering (%d)", err);

 return err;
}
