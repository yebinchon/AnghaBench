
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;


 int regulator_disable (struct regulator*) ;

__attribute__((used)) static void mpr121_vdd_supply_disable(void *data)
{
 struct regulator *vdd_supply = data;

 regulator_disable(vdd_supply);
}
