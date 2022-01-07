
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct st_irq_syscfg {unsigned int syscfg; int regmap; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct st_irq_syscfg*) ;
 struct st_irq_syscfg* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int st_irq_syscfg_enable (struct platform_device*) ;
 int st_irq_syscfg_match ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int st_irq_syscfg_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 const struct of_device_id *match;
 struct st_irq_syscfg *ddata;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 match = of_match_device(st_irq_syscfg_match, &pdev->dev);
 if (!match)
  return -ENODEV;

 ddata->syscfg = (unsigned int)match->data;

 ddata->regmap = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
 if (IS_ERR(ddata->regmap)) {
  dev_err(&pdev->dev, "syscfg phandle missing\n");
  return PTR_ERR(ddata->regmap);
 }

 dev_set_drvdata(&pdev->dev, ddata);

 return st_irq_syscfg_enable(pdev);
}
