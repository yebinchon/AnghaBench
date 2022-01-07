
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {void* vddio; void* vdd; int regmap; } ;
struct device {int parent; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int PTR_ERR_OR_ZERO (void*) ;
 void* devm_regulator_get (int ,char*) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int fxas21002c_regulators_get(struct fxas21002c_data *data)
{
 struct device *dev = regmap_get_device(data->regmap);

 data->vdd = devm_regulator_get(dev->parent, "vdd");
 if (IS_ERR(data->vdd))
  return PTR_ERR(data->vdd);

 data->vddio = devm_regulator_get(dev->parent, "vddio");

 return PTR_ERR_OR_ZERO(data->vddio);
}
