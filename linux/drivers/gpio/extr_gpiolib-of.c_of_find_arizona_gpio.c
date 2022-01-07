
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int of_node; } ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;


 int CONFIG_MFD_ARIZONA ;
 int ENOENT ;
 struct gpio_desc* ERR_PTR (int ) ;
 int IS_ENABLED (int ) ;
 struct gpio_desc* of_get_named_gpiod_flags (int ,char const*,int ,int*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static struct gpio_desc *of_find_arizona_gpio(struct device *dev,
           const char *con_id,
           enum of_gpio_flags *of_flags)
{
 if (!IS_ENABLED(CONFIG_MFD_ARIZONA))
  return ERR_PTR(-ENOENT);

 if (!con_id || strcmp(con_id, "wlf,reset"))
  return ERR_PTR(-ENOENT);

 return of_get_named_gpiod_flags(dev->of_node, con_id, 0, of_flags);
}
