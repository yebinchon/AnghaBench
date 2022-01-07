
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlc4541_state {int reg; } ;


 int regulator_get_voltage (int ) ;

__attribute__((used)) static int tlc4541_get_range(struct tlc4541_state *st)
{
 int vref;

 vref = regulator_get_voltage(st->reg);
 if (vref < 0)
  return vref;

 vref /= 1000;

 return vref;
}
