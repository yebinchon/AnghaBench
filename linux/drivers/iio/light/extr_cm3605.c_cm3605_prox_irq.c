
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iio_dev {int dummy; } ;
struct cm3605 {scalar_t__ dir; } ;
typedef int irqreturn_t ;


 int CM3605_PROX_CHANNEL ;
 scalar_t__ IIO_EV_DIR_FALLING ;
 scalar_t__ IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_PROXIMITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,scalar_t__) ;
 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct cm3605* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t cm3605_prox_irq(int irq, void *d)
{
 struct iio_dev *indio_dev = d;
 struct cm3605 *cm3605 = iio_priv(indio_dev);
 u64 ev;

 ev = IIO_UNMOD_EVENT_CODE(IIO_PROXIMITY, CM3605_PROX_CHANNEL,
      IIO_EV_TYPE_THRESH, cm3605->dir);
 iio_push_event(indio_dev, ev, iio_get_time_ns(indio_dev));


 if (cm3605->dir == IIO_EV_DIR_RISING)
  cm3605->dir = IIO_EV_DIR_FALLING;
 else
  cm3605->dir = IIO_EV_DIR_RISING;

 return IRQ_HANDLED;
}
