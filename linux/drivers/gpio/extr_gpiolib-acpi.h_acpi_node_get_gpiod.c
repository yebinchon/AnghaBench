
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_gpio_info {int dummy; } ;


 int ENXIO ;
 struct gpio_desc* ERR_PTR (int ) ;

__attribute__((used)) static inline struct gpio_desc *
acpi_node_get_gpiod(struct fwnode_handle *fwnode, const char *propname,
      int index, struct acpi_gpio_info *info)
{
 return ERR_PTR(-ENXIO);
}
