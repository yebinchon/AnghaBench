
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hideep_ts {int vcc_vdd; int vcc_vid; scalar_t__ reset_gpio; } ;


 int gpiod_set_value (scalar_t__,int) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void hideep_power_off(void *data)
{
 struct hideep_ts *ts = data;

 if (ts->reset_gpio)
  gpiod_set_value(ts->reset_gpio, 1);

 regulator_disable(ts->vcc_vid);
 regulator_disable(ts->vcc_vdd);
}
