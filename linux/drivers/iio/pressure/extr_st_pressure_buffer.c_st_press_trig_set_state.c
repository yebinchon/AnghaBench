
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int st_sensors_set_dataready_irq (struct iio_dev*,int) ;

int st_press_trig_set_state(struct iio_trigger *trig, bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);

 return st_sensors_set_dataready_irq(indio_dev, state);
}
