
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ts4800_ts {int bit; int reg; int regmap; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int BIT (int ) ;
 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 int syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int ts4800_parse_dt(struct platform_device *pdev,
      struct ts4800_ts *ts)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct device_node *syscon_np;
 u32 reg, bit;
 int error;

 syscon_np = of_parse_phandle(np, "syscon", 0);
 if (!syscon_np) {
  dev_err(dev, "no syscon property\n");
  return -ENODEV;
 }

 ts->regmap = syscon_node_to_regmap(syscon_np);
 of_node_put(syscon_np);
 if (IS_ERR(ts->regmap)) {
  dev_err(dev, "cannot get parent's regmap\n");
  return PTR_ERR(ts->regmap);
 }

 error = of_property_read_u32_index(np, "syscon", 1, &reg);
 if (error < 0) {
  dev_err(dev, "no offset in syscon\n");
  return error;
 }

 ts->reg = reg;

 error = of_property_read_u32_index(np, "syscon", 2, &bit);
 if (error < 0) {
  dev_err(dev, "no bit in syscon\n");
  return error;
 }

 ts->bit = BIT(bit);

 return 0;
}
