
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_data {int hw_timestamp; int dev; scalar_t__ hw_irq_trigger; int edge_irq; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (int ,char*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int iio_trigger_poll_chained (void*) ;
 scalar_t__ st_sensors_new_samples_available (struct iio_dev*,struct st_sensor_data*) ;

__attribute__((used)) static irqreturn_t st_sensors_irq_thread(int irq, void *p)
{
 struct iio_trigger *trig = p;
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct st_sensor_data *sdata = iio_priv(indio_dev);
 if (sdata->hw_irq_trigger &&
     st_sensors_new_samples_available(indio_dev, sdata)) {
  iio_trigger_poll_chained(p);
 } else {
  dev_dbg(sdata->dev, "spurious IRQ\n");
  return IRQ_NONE;
 }






 if (!sdata->edge_irq)
  return IRQ_HANDLED;







 while (sdata->hw_irq_trigger &&
        st_sensors_new_samples_available(indio_dev, sdata)) {
  dev_dbg(sdata->dev, "more samples came in during polling\n");
  sdata->hw_timestamp = iio_get_time_ns(indio_dev);
  iio_trigger_poll_chained(p);
 }

 return IRQ_HANDLED;
}
