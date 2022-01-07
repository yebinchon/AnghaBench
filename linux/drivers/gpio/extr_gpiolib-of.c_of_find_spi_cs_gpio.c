
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int CONFIG_SPI_MASTER ;
 int ENOENT ;
 struct gpio_desc* ERR_PTR (int ) ;
 int IS_ENABLED (int ) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct gpio_desc* of_find_gpio (struct device*,int *,unsigned int,unsigned long*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static struct gpio_desc *of_find_spi_cs_gpio(struct device *dev,
          const char *con_id,
          unsigned int idx,
          unsigned long *flags)
{
 struct device_node *np = dev->of_node;

 if (!IS_ENABLED(CONFIG_SPI_MASTER))
  return ERR_PTR(-ENOENT);


 if (!of_device_is_compatible(np, "fsl,spi") &&
     !of_device_is_compatible(np, "aeroflexgaisler,spictrl"))
  return ERR_PTR(-ENOENT);

 if (!con_id || strcmp(con_id, "cs"))
  return ERR_PTR(-ENOENT);






 return of_find_gpio(dev, ((void*)0), idx, flags);
}
