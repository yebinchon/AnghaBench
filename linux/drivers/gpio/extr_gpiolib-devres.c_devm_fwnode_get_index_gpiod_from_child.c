
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
typedef int prop_name ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 unsigned int ARRAY_SIZE (char**) ;
 int ENOENT ;
 int ENOMEM ;
 struct gpio_desc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int devm_gpiod_release ;
 int devres_add (struct device*,struct gpio_desc**) ;
 struct gpio_desc** devres_alloc (int ,int,int ) ;
 int devres_free (struct gpio_desc**) ;
 struct gpio_desc* fwnode_get_named_gpiod (struct fwnode_handle*,char*,int,int,char const*) ;
 char** gpio_suffixes ;
 int snprintf (char*,int,char*,char const*,...) ;

struct gpio_desc *devm_fwnode_get_index_gpiod_from_child(struct device *dev,
      const char *con_id, int index,
      struct fwnode_handle *child,
      enum gpiod_flags flags,
      const char *label)
{
 char prop_name[32];
 struct gpio_desc **dr;
 struct gpio_desc *desc;
 unsigned int i;

 dr = devres_alloc(devm_gpiod_release, sizeof(struct gpio_desc *),
     GFP_KERNEL);
 if (!dr)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
  if (con_id)
   snprintf(prop_name, sizeof(prop_name), "%s-%s",
         con_id, gpio_suffixes[i]);
  else
   snprintf(prop_name, sizeof(prop_name), "%s",
         gpio_suffixes[i]);

  desc = fwnode_get_named_gpiod(child, prop_name, index, flags,
           label);
  if (!IS_ERR(desc) || (PTR_ERR(desc) != -ENOENT))
   break;
 }
 if (IS_ERR(desc)) {
  devres_free(dr);
  return desc;
 }

 *dr = desc;
 devres_add(dev, dr);

 return desc;
}
