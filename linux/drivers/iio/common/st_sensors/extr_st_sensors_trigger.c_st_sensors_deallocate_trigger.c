
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_data {int trig; int irq; } ;
struct iio_dev {int dummy; } ;


 int free_irq (int ,int ) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_free (int ) ;
 int iio_trigger_unregister (int ) ;

void st_sensors_deallocate_trigger(struct iio_dev *indio_dev)
{
 struct st_sensor_data *sdata = iio_priv(indio_dev);

 iio_trigger_unregister(sdata->trig);
 free_irq(sdata->irq, sdata->trig);
 iio_trigger_free(sdata->trig);
}
