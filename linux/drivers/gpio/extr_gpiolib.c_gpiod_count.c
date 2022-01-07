
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;


 scalar_t__ ACPI_HANDLE (struct device*) ;
 int CONFIG_ACPI ;
 int CONFIG_OF ;
 int ENOENT ;
 scalar_t__ IS_ENABLED (int ) ;
 int acpi_gpio_count (struct device*,char const*) ;
 int of_gpio_get_count (struct device*,char const*) ;
 int platform_gpio_count (struct device*,char const*) ;

int gpiod_count(struct device *dev, const char *con_id)
{
 int count = -ENOENT;

 if (IS_ENABLED(CONFIG_OF) && dev && dev->of_node)
  count = of_gpio_get_count(dev, con_id);
 else if (IS_ENABLED(CONFIG_ACPI) && dev && ACPI_HANDLE(dev))
  count = acpi_gpio_count(dev, con_id);

 if (count < 0)
  count = platform_gpio_count(dev, con_id);

 return count;
}
