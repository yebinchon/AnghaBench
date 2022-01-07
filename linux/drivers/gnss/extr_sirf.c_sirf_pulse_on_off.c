
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int on_off; } ;


 int SIRF_ON_OFF_PULSE_TIME ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int ) ;

__attribute__((used)) static void sirf_pulse_on_off(struct sirf_data *data)
{
 gpiod_set_value_cansleep(data->on_off, 1);
 msleep(SIRF_ON_OFF_PULSE_TIME);
 gpiod_set_value_cansleep(data->on_off, 0);
}
