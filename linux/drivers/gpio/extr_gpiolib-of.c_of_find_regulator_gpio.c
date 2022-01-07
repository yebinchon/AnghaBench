
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;


 int ARRAY_SIZE (char const**) ;
 int CONFIG_REGULATOR ;
 int ENOENT ;
 struct gpio_desc* ERR_PTR (int ) ;
 int IS_ENABLED (int ) ;
 int match_string (char const**,int ,char const*) ;
 struct gpio_desc* of_get_named_gpiod_flags (struct device_node*,char const*,int ,int*) ;

__attribute__((used)) static struct gpio_desc *of_find_regulator_gpio(struct device *dev, const char *con_id,
      enum of_gpio_flags *of_flags)
{

 const char *whitelist[] = {
  "wlf,ldoena",
  "wlf,ldo1ena",
  "wlf,ldo2ena",
 };
 struct device_node *np = dev->of_node;
 struct gpio_desc *desc;
 int i;

 if (!IS_ENABLED(CONFIG_REGULATOR))
  return ERR_PTR(-ENOENT);

 if (!con_id)
  return ERR_PTR(-ENOENT);

 i = match_string(whitelist, ARRAY_SIZE(whitelist), con_id);
 if (i < 0)
  return ERR_PTR(-ENOENT);

 desc = of_get_named_gpiod_flags(np, con_id, 0, of_flags);
 return desc;
}
