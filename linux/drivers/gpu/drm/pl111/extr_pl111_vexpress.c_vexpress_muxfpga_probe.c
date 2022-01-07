
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_set_drvdata (struct device*,struct regmap*) ;
 struct regmap* devm_regmap_init_vexpress_config (struct device*) ;

__attribute__((used)) static int vexpress_muxfpga_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct regmap *map;

 map = devm_regmap_init_vexpress_config(&pdev->dev);
 if (IS_ERR(map))
  return PTR_ERR(map);
 dev_set_drvdata(dev, map);

 return 0;
}
