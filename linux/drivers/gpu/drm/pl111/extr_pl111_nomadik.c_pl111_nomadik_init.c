
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PMU_CTRL_LCDNDIF ;
 int PMU_CTRL_OFFSET ;
 int dev_info (struct device*,char*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 struct regmap* syscon_regmap_lookup_by_compatible (char*) ;

void pl111_nomadik_init(struct device *dev)
{
 struct regmap *pmu_regmap;





 pmu_regmap =
  syscon_regmap_lookup_by_compatible("stericsson,nomadik-pmu");
 if (IS_ERR(pmu_regmap))
  return;






 regmap_update_bits(pmu_regmap,
      PMU_CTRL_OFFSET,
      PMU_CTRL_LCDNDIF,
      0);
 dev_info(dev, "set Nomadik PMU mux to CLCD mode\n");
}
