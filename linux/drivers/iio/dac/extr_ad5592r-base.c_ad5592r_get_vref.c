
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5592r_state {scalar_t__ reg; } ;


 int regulator_get_voltage (scalar_t__) ;

__attribute__((used)) static int ad5592r_get_vref(struct ad5592r_state *st)
{
 int ret;

 if (st->reg) {
  ret = regulator_get_voltage(st->reg);
  if (ret < 0)
   return ret;

  return ret / 1000;
 } else {
  return 2500;
 }
}
