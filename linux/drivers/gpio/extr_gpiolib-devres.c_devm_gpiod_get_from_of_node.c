
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct devres {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int ENOMEM ;
 struct gpio_desc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int devm_gpiod_match ;
 int devm_gpiod_release ;
 int devres_add (struct device*,struct gpio_desc**) ;
 struct gpio_desc** devres_alloc (int ,int,int ) ;
 struct devres* devres_find (struct device*,int ,int ,struct gpio_desc**) ;
 struct gpio_desc* gpiod_get_from_of_node (struct device_node*,char const*,int,int,char const*) ;
 int gpiod_put (struct gpio_desc*) ;

struct gpio_desc *devm_gpiod_get_from_of_node(struct device *dev,
           struct device_node *node,
           const char *propname, int index,
           enum gpiod_flags dflags,
           const char *label)
{
 struct gpio_desc **dr;
 struct gpio_desc *desc;

 desc = gpiod_get_from_of_node(node, propname, index, dflags, label);
 if (IS_ERR(desc))
  return desc;





 if (dflags & GPIOD_FLAGS_BIT_NONEXCLUSIVE) {
  struct devres *dres;

  dres = devres_find(dev, devm_gpiod_release,
       devm_gpiod_match, &desc);
  if (dres)
   return desc;
 }

 dr = devres_alloc(devm_gpiod_release, sizeof(struct gpio_desc *),
     GFP_KERNEL);
 if (!dr) {
  gpiod_put(desc);
  return ERR_PTR(-ENOMEM);
 }

 *dr = desc;
 devres_add(dev, dr);

 return desc;
}
