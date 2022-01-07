
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ads7950_state {int vref_mv; int cmd_settings_bitmask; int reg; } ;


 int TI_ADS7950_CR_RANGE_5V ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ti_ads7950_get_range(struct ti_ads7950_state *st)
{
 int vref;

 if (st->vref_mv) {
  vref = st->vref_mv;
 } else {
  vref = regulator_get_voltage(st->reg);
  if (vref < 0)
   return vref;

  vref /= 1000;
 }

 if (st->cmd_settings_bitmask & TI_ADS7950_CR_RANGE_5V)
  vref *= 2;

 return vref;
}
