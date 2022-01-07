
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_data {int hw_timestamp; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static irqreturn_t st_sensors_irq_handler(int irq, void *p)
{
 struct iio_trigger *trig = p;
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct st_sensor_data *sdata = iio_priv(indio_dev);


 sdata->hw_timestamp = iio_get_time_ns(indio_dev);
 return IRQ_WAKE_THREAD;
}
