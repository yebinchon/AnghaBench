
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk3310_data {int timestamp; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct stk3310_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t stk3310_irq_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct stk3310_data *data = iio_priv(indio_dev);

 data->timestamp = iio_get_time_ns(indio_dev);

 return IRQ_WAKE_THREAD;
}
