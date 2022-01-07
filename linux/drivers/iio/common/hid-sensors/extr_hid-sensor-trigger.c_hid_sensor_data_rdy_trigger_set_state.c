
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;


 int hid_sensor_power_state (int ,int) ;
 int iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int hid_sensor_data_rdy_trigger_set_state(struct iio_trigger *trig,
      bool state)
{
 return hid_sensor_power_state(iio_trigger_get_drvdata(trig), state);
}
