
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int name; int brightness_set; void* default_trigger; } ;
struct syscon_led {int offset; int mask; int state; TYPE_1__ cdev; struct regmap* map; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct device_node {int name; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 struct syscon_led* devm_kzalloc (struct device*,int,int ) ;
 int devm_led_classdev_register (struct device*,TYPE_1__*) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct syscon_led*) ;
 int regmap_read (struct regmap*,int,int*) ;
 int regmap_update_bits (struct regmap*,int,int,int) ;
 int strcmp (char const*,char*) ;
 int syscon_led_set ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int syscon_led_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct device *parent;
 struct regmap *map;
 struct syscon_led *sled;
 const char *state;
 int ret;

 parent = dev->parent;
 if (!parent) {
  dev_err(dev, "no parent for syscon LED\n");
  return -ENODEV;
 }
 map = syscon_node_to_regmap(parent->of_node);
 if (IS_ERR(map)) {
  dev_err(dev, "no regmap for syscon LED parent\n");
  return PTR_ERR(map);
 }

 sled = devm_kzalloc(dev, sizeof(*sled), GFP_KERNEL);
 if (!sled)
  return -ENOMEM;

 sled->map = map;

 if (of_property_read_u32(np, "offset", &sled->offset))
  return -EINVAL;
 if (of_property_read_u32(np, "mask", &sled->mask))
  return -EINVAL;
 sled->cdev.name =
  of_get_property(np, "label", ((void*)0)) ? : np->name;
 sled->cdev.default_trigger =
  of_get_property(np, "linux,default-trigger", ((void*)0));

 state = of_get_property(np, "default-state", ((void*)0));
 if (state) {
  if (!strcmp(state, "keep")) {
   u32 val;

   ret = regmap_read(map, sled->offset, &val);
   if (ret < 0)
    return ret;
   sled->state = !!(val & sled->mask);
  } else if (!strcmp(state, "on")) {
   sled->state = 1;
   ret = regmap_update_bits(map, sled->offset,
       sled->mask,
       sled->mask);
   if (ret < 0)
    return ret;
  } else {
   sled->state = 0;
   ret = regmap_update_bits(map, sled->offset,
       sled->mask, 0);
   if (ret < 0)
    return ret;
  }
 }
 sled->cdev.brightness_set = syscon_led_set;

 ret = devm_led_classdev_register(dev, &sled->cdev);
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, sled);
 dev_info(dev, "registered LED %s\n", sled->cdev.name);

 return 0;
}
