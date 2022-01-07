
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct device {int dummy; } ;


 struct regulator* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct regulator*) ;
 int PTR_ERR (struct regulator*) ;
 int dev_err (struct device*,char*,int) ;
 int devm_add_action (struct device*,int ,struct regulator*) ;
 struct regulator* devm_regulator_get (struct device*,char*) ;
 int mpr121_vdd_supply_disable ;
 int regulator_disable (struct regulator*) ;
 int regulator_enable (struct regulator*) ;

__attribute__((used)) static struct regulator *mpr121_vdd_supply_init(struct device *dev)
{
 struct regulator *vdd_supply;
 int err;

 vdd_supply = devm_regulator_get(dev, "vdd");
 if (IS_ERR(vdd_supply)) {
  dev_err(dev, "failed to get vdd regulator: %ld\n",
   PTR_ERR(vdd_supply));
  return vdd_supply;
 }

 err = regulator_enable(vdd_supply);
 if (err) {
  dev_err(dev, "failed to enable vdd regulator: %d\n", err);
  return ERR_PTR(err);
 }

 err = devm_add_action(dev, mpr121_vdd_supply_disable, vdd_supply);
 if (err) {
  regulator_disable(vdd_supply);
  dev_err(dev, "failed to add disable regulator action: %d\n",
   err);
  return ERR_PTR(err);
 }

 return vdd_supply;
}
