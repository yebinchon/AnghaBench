
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {int dummy; } ;
struct TYPE_2__ {struct acpi_device* adev; } ;
struct acpi_gpio_lookup {int index; struct gpio_desc* desc; TYPE_1__ info; int active_low; int pin_index; } ;
struct acpi_gpio_info {int dummy; } ;
struct acpi_device {int dev; } ;
typedef int lookup ;


 int ENODEV ;
 struct gpio_desc* ERR_PTR (int) ;
 int acpi_fwnode_handle (struct acpi_device*) ;
 int acpi_gpio_property_lookup (int ,char const*,int,struct acpi_gpio_lookup*) ;
 int acpi_gpio_resource_lookup (struct acpi_gpio_lookup*,struct acpi_gpio_info*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_name (int *) ;
 int memset (struct acpi_gpio_lookup*,int ,int) ;

__attribute__((used)) static struct gpio_desc *acpi_get_gpiod_by_index(struct acpi_device *adev,
       const char *propname, int index,
       struct acpi_gpio_info *info)
{
 struct acpi_gpio_lookup lookup;
 int ret;

 if (!adev)
  return ERR_PTR(-ENODEV);

 memset(&lookup, 0, sizeof(lookup));
 lookup.index = index;

 if (propname) {
  dev_dbg(&adev->dev, "GPIO: looking up %s\n", propname);

  ret = acpi_gpio_property_lookup(acpi_fwnode_handle(adev),
      propname, index, &lookup);
  if (ret)
   return ERR_PTR(ret);

  dev_dbg(&adev->dev, "GPIO: _DSD returned %s %d %d %u\n",
   dev_name(&lookup.info.adev->dev), lookup.index,
   lookup.pin_index, lookup.active_low);
 } else {
  dev_dbg(&adev->dev, "GPIO: looking up %d in _CRS\n", index);
  lookup.info.adev = adev;
 }

 ret = acpi_gpio_resource_lookup(&lookup, info);
 return ret ? ERR_PTR(ret) : lookup.desc;
}
