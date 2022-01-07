
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vexpress_hwmon_type {int attr_groups; int name; } ;
struct vexpress_hwmon_data {int hwmon_dev; int reg; } ;
struct platform_device {int dev; } ;
struct of_device_id {struct vexpress_hwmon_type* data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int devm_hwmon_device_register_with_groups (int *,int ,struct vexpress_hwmon_data*,int ) ;
 struct vexpress_hwmon_data* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_vexpress_config (int *) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int platform_set_drvdata (struct platform_device*,struct vexpress_hwmon_data*) ;
 int vexpress_hwmon_of_match ;

__attribute__((used)) static int vexpress_hwmon_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct vexpress_hwmon_data *data;
 const struct vexpress_hwmon_type *type;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 platform_set_drvdata(pdev, data);

 match = of_match_device(vexpress_hwmon_of_match, &pdev->dev);
 if (!match)
  return -ENODEV;
 type = match->data;

 data->reg = devm_regmap_init_vexpress_config(&pdev->dev);
 if (IS_ERR(data->reg))
  return PTR_ERR(data->reg);

 data->hwmon_dev = devm_hwmon_device_register_with_groups(&pdev->dev,
   type->name, data, type->attr_groups);

 return PTR_ERR_OR_ZERO(data->hwmon_dev);
}
