
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_gpio_mapping {int dummy; } ;


 int ACPI_COMPANION (struct device*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_dev_add_driver_gpios (int ,struct acpi_gpio_mapping const*) ;
 int devm_acpi_dev_release_driver_gpios ;
 int devres_add (struct device*,void*) ;
 void* devres_alloc (int ,int ,int ) ;
 int devres_free (void*) ;

int devm_acpi_dev_add_driver_gpios(struct device *dev,
       const struct acpi_gpio_mapping *gpios)
{
 void *res;
 int ret;

 res = devres_alloc(devm_acpi_dev_release_driver_gpios, 0, GFP_KERNEL);
 if (!res)
  return -ENOMEM;

 ret = acpi_dev_add_driver_gpios(ACPI_COMPANION(dev), gpios);
 if (ret) {
  devres_free(res);
  return ret;
 }
 devres_add(dev, res);
 return 0;
}
