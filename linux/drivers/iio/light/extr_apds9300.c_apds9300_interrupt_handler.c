
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct apds9300_data {int dummy; } ;
typedef int irqreturn_t ;


 int IIO_EV_DIR_EITHER ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_INTENSITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int apds9300_clear_intr (struct apds9300_data*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct apds9300_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t apds9300_interrupt_handler(int irq, void *private)
{
 struct iio_dev *dev_info = private;
 struct apds9300_data *data = iio_priv(dev_info);

 iio_push_event(dev_info,
         IIO_UNMOD_EVENT_CODE(IIO_INTENSITY, 0,
         IIO_EV_TYPE_THRESH,
         IIO_EV_DIR_EITHER),
         iio_get_time_ns(dev_info));

 apds9300_clear_intr(data);

 return IRQ_HANDLED;
}
