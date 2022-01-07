
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rad_panel {int num_supplies; TYPE_2__* supplies; TYPE_1__* dsi; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int supply; } ;
struct TYPE_4__ {struct device dev; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* devm_kcalloc (struct device*,int,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_2__*) ;
 int * rad_supply_names ;

__attribute__((used)) static int rad_init_regulators(struct rad_panel *rad)
{
 struct device *dev = &rad->dsi->dev;
 int i;

 rad->num_supplies = ARRAY_SIZE(rad_supply_names);
 rad->supplies = devm_kcalloc(dev, rad->num_supplies,
         sizeof(*rad->supplies), GFP_KERNEL);
 if (!rad->supplies)
  return -ENOMEM;

 for (i = 0; i < rad->num_supplies; i++)
  rad->supplies[i].supply = rad_supply_names[i];

 return devm_regulator_bulk_get(dev, rad->num_supplies, rad->supplies);
}
