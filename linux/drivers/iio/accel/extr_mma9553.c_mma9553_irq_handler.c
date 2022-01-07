
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9553_data {int timestamp; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t mma9553_irq_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct mma9553_data *data = iio_priv(indio_dev);

 data->timestamp = iio_get_time_ns(indio_dev);





 return IRQ_WAKE_THREAD;
}
