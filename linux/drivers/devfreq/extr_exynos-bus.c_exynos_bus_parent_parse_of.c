
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int dummy; } ;
struct exynos_bus {int edev_count; struct opp_table* opp_table; int ratio; struct opp_table** edev; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int DEFAULT_SATURATION_RATIO ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct opp_table*) ;
 int PTR_ERR (struct opp_table*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_pm_opp_put_regulators (struct opp_table*) ;
 struct opp_table* dev_pm_opp_set_regulators (struct device*,char const**,int) ;
 struct opp_table* devfreq_event_get_edev_by_phandle (struct device*,int) ;
 int devfreq_event_get_edev_count (struct device*) ;
 struct opp_table** devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int exynos_bus_parent_parse_of(struct device_node *np,
     struct exynos_bus *bus)
{
 struct device *dev = bus->dev;
 struct opp_table *opp_table;
 const char *vdd = "vdd";
 int i, ret, count, size;

 opp_table = dev_pm_opp_set_regulators(dev, &vdd, 1);
 if (IS_ERR(opp_table)) {
  ret = PTR_ERR(opp_table);
  dev_err(dev, "failed to set regulators %d\n", ret);
  return ret;
 }

 bus->opp_table = opp_table;





 count = devfreq_event_get_edev_count(dev);
 if (count < 0) {
  dev_err(dev, "failed to get the count of devfreq-event dev\n");
  ret = count;
  goto err_regulator;
 }
 bus->edev_count = count;

 size = sizeof(*bus->edev) * count;
 bus->edev = devm_kzalloc(dev, size, GFP_KERNEL);
 if (!bus->edev) {
  ret = -ENOMEM;
  goto err_regulator;
 }

 for (i = 0; i < count; i++) {
  bus->edev[i] = devfreq_event_get_edev_by_phandle(dev, i);
  if (IS_ERR(bus->edev[i])) {
   ret = -EPROBE_DEFER;
   goto err_regulator;
  }
 }
 if (of_property_read_u32(np, "exynos,saturation-ratio", &bus->ratio))
  bus->ratio = DEFAULT_SATURATION_RATIO;

 return 0;

err_regulator:
 dev_pm_opp_put_regulators(bus->opp_table);
 bus->opp_table = ((void*)0);

 return ret;
}
