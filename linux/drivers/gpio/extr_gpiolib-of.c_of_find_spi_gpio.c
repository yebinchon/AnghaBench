
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int prop_name ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;


 int CONFIG_SPI_MASTER ;
 int ENOENT ;
 struct gpio_desc* ERR_PTR (int ) ;
 int IS_ENABLED (int ) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct gpio_desc* of_get_named_gpiod_flags (struct device_node*,char*,int ,int*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static struct gpio_desc *of_find_spi_gpio(struct device *dev, const char *con_id,
       enum of_gpio_flags *of_flags)
{
 char prop_name[32];
 struct device_node *np = dev->of_node;
 struct gpio_desc *desc;





 if (!IS_ENABLED(CONFIG_SPI_MASTER))
  return ERR_PTR(-ENOENT);


 if (!of_device_is_compatible(np, "spi-gpio") || !con_id)
  return ERR_PTR(-ENOENT);


 snprintf(prop_name, sizeof(prop_name), "%s-%s", "gpio", con_id);

 desc = of_get_named_gpiod_flags(np, prop_name, 0, of_flags);
 return desc;
}
