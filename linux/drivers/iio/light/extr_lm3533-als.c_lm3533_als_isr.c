
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_als {int zone; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IIO_EV_DIR_EITHER ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_LIGHT ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int _lm3533_als_get_zone (struct iio_dev*,int *) ;
 int atomic_set (int *,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t lm3533_als_isr(int irq, void *dev_id)
{

 struct iio_dev *indio_dev = dev_id;
 struct lm3533_als *als = iio_priv(indio_dev);
 u8 zone;
 int ret;


 ret = _lm3533_als_get_zone(indio_dev, &zone);
 if (ret)
  goto out;

 atomic_set(&als->zone, zone);

 iio_push_event(indio_dev,
         IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
         0,
         IIO_EV_TYPE_THRESH,
         IIO_EV_DIR_EITHER),
         iio_get_time_ns(indio_dev));
out:
 return IRQ_HANDLED;
}
