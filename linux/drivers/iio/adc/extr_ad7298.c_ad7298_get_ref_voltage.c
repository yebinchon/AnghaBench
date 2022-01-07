
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7298_state {int reg; scalar_t__ ext_ref; } ;


 int AD7298_INTREF_mV ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad7298_get_ref_voltage(struct ad7298_state *st)
{
 int vref;

 if (st->ext_ref) {
  vref = regulator_get_voltage(st->reg);
  if (vref < 0)
   return vref;

  return vref / 1000;
 } else {
  return AD7298_INTREF_mV;
 }
}
