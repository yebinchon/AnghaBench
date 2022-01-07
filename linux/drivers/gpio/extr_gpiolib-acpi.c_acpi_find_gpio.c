
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct acpi_gpio_info {scalar_t__ gpioint; } ;
struct acpi_device {int dummy; } ;
typedef int propname ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int ARRAY_SIZE (char**) ;
 int ENOENT ;
 int EPROBE_DEFER ;
 struct gpio_desc* ERR_CAST (struct gpio_desc*) ;
 struct gpio_desc* ERR_PTR (int ) ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int acpi_can_fallback_to_crs (struct acpi_device*,char const*) ;
 struct gpio_desc* acpi_get_gpiod_by_index (struct acpi_device*,char*,unsigned int,struct acpi_gpio_info*) ;
 int acpi_gpio_update_gpiod_flags (int*,struct acpi_gpio_info*) ;
 int acpi_gpio_update_gpiod_lookup_flags (unsigned long*,struct acpi_gpio_info*) ;
 int dev_dbg (struct device*,char*) ;
 char** gpio_suffixes ;
 int snprintf (char*,int,char*,char const*,...) ;

struct gpio_desc *acpi_find_gpio(struct device *dev,
     const char *con_id,
     unsigned int idx,
     enum gpiod_flags *dflags,
     unsigned long *lookupflags)
{
 struct acpi_device *adev = ACPI_COMPANION(dev);
 struct acpi_gpio_info info;
 struct gpio_desc *desc;
 char propname[32];
 int i;


 for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
  if (con_id) {
   snprintf(propname, sizeof(propname), "%s-%s",
     con_id, gpio_suffixes[i]);
  } else {
   snprintf(propname, sizeof(propname), "%s",
     gpio_suffixes[i]);
  }

  desc = acpi_get_gpiod_by_index(adev, propname, idx, &info);
  if (!IS_ERR(desc))
   break;
  if (PTR_ERR(desc) == -EPROBE_DEFER)
   return ERR_CAST(desc);
 }


 if (IS_ERR(desc)) {
  if (!acpi_can_fallback_to_crs(adev, con_id))
   return ERR_PTR(-ENOENT);

  desc = acpi_get_gpiod_by_index(adev, ((void*)0), idx, &info);
  if (IS_ERR(desc))
   return desc;
 }

 if (info.gpioint &&
     (*dflags == GPIOD_OUT_LOW || *dflags == GPIOD_OUT_HIGH)) {
  dev_dbg(dev, "refusing GpioInt() entry when doing GPIOD_OUT_* lookup\n");
  return ERR_PTR(-ENOENT);
 }

 acpi_gpio_update_gpiod_flags(dflags, &info);
 acpi_gpio_update_gpiod_lookup_flags(lookupflags, &info);
 return desc;
}
