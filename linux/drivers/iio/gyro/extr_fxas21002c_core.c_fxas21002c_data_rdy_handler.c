
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct fxas21002c_data {int timestamp; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct fxas21002c_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t fxas21002c_data_rdy_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct fxas21002c_data *data = iio_priv(indio_dev);

 data->timestamp = iio_get_time_ns(indio_dev);

 return IRQ_WAKE_THREAD;
}
