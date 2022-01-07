
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7923_state {int settings; int reg; } ;


 int AD7923_RANGE ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad7923_get_range(struct ad7923_state *st)
{
 int vref;

 vref = regulator_get_voltage(st->reg);
 if (vref < 0)
  return vref;

 vref /= 1000;

 if (!(st->settings & AD7923_RANGE))
  vref *= 2;

 return vref;
}
