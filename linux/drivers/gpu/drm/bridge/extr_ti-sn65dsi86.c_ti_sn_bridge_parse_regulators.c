
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_sn_bridge {TYPE_1__* supplies; int dev; } ;
struct TYPE_2__ {char* supply; } ;


 unsigned int SN_REGULATOR_SUPPLY_NUM ;
 int devm_regulator_bulk_get (int ,unsigned int,TYPE_1__*) ;

__attribute__((used)) static int ti_sn_bridge_parse_regulators(struct ti_sn_bridge *pdata)
{
 unsigned int i;
 const char * const ti_sn_bridge_supply_names[] = {
  "vcca", "vcc", "vccio", "vpll",
 };

 for (i = 0; i < SN_REGULATOR_SUPPLY_NUM; i++)
  pdata->supplies[i].supply = ti_sn_bridge_supply_names[i];

 return devm_regulator_bulk_get(pdata->dev, SN_REGULATOR_SUPPLY_NUM,
           pdata->supplies);
}
