
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct hi8435_priv {int dummy; } ;
typedef int irqreturn_t ;


 int HI8435_SO31_0_REG ;
 int IRQ_HANDLED ;
 int hi8435_iio_push_event (struct iio_dev*,int ) ;
 int hi8435_readl (struct hi8435_priv*,int ,int *) ;
 struct hi8435_priv* iio_priv (struct iio_dev*) ;
 int iio_trigger_notify_done (int ) ;

__attribute__((used)) static irqreturn_t hi8435_trigger_handler(int irq, void *private)
{
 struct iio_poll_func *pf = private;
 struct iio_dev *idev = pf->indio_dev;
 struct hi8435_priv *priv = iio_priv(idev);
 u32 val;
 int ret;

 ret = hi8435_readl(priv, HI8435_SO31_0_REG, &val);
 if (ret < 0)
  goto err_read;

 hi8435_iio_push_event(idev, val);

err_read:
 iio_trigger_notify_done(idev->trig);

 return IRQ_HANDLED;
}
