
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpr0521_data {int irq_timestamp; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct rpr0521_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t rpr0521_drdy_irq_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct rpr0521_data *data = iio_priv(indio_dev);

 data->irq_timestamp = iio_get_time_ns(indio_dev);






 return IRQ_WAKE_THREAD;
}
