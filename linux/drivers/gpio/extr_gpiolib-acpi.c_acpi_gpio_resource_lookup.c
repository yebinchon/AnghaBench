
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct acpi_gpio_info {struct acpi_device* adev; } ;
struct acpi_gpio_lookup {struct acpi_gpio_info info; int desc; } ;
struct acpi_device {int dummy; } ;


 int ENOENT ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int acpi_dev_free_resource_list (struct list_head*) ;
 int acpi_dev_get_resources (struct acpi_device*,struct list_head*,int ,struct acpi_gpio_lookup*) ;
 int acpi_populate_gpio_lookup ;

__attribute__((used)) static int acpi_gpio_resource_lookup(struct acpi_gpio_lookup *lookup,
         struct acpi_gpio_info *info)
{
 struct acpi_device *adev = lookup->info.adev;
 struct list_head res_list;
 int ret;

 INIT_LIST_HEAD(&res_list);

 ret = acpi_dev_get_resources(adev, &res_list,
         acpi_populate_gpio_lookup,
         lookup);
 if (ret < 0)
  return ret;

 acpi_dev_free_resource_list(&res_list);

 if (!lookup->desc)
  return -ENOENT;

 if (info)
  *info = lookup->info;
 return 0;
}
