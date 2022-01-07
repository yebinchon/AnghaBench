
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_device {int ngpio; TYPE_1__* descs; int dev; } ;
struct gpio_chip {struct gpio_device* gpiodev; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 int GFP_KERNEL ;
 int dev_warn (int *,char*) ;
 int fwnode_property_read_string_array (struct fwnode_handle const*,char*,char const**,int) ;
 char** kcalloc (int,int,int ) ;
 int kfree (char const**) ;

void devprop_gpiochip_set_names(struct gpio_chip *chip,
    const struct fwnode_handle *fwnode)
{
 struct gpio_device *gdev = chip->gpiodev;
 const char **names;
 int ret, i;
 int count;

 count = fwnode_property_read_string_array(fwnode, "gpio-line-names",
        ((void*)0), 0);
 if (count < 0)
  return;

 if (count > gdev->ngpio)
  count = gdev->ngpio;

 names = kcalloc(count, sizeof(*names), GFP_KERNEL);
 if (!names)
  return;

 ret = fwnode_property_read_string_array(fwnode, "gpio-line-names",
      names, count);
 if (ret < 0) {
  dev_warn(&gdev->dev, "failed to read GPIO line names\n");
  kfree(names);
  return;
 }

 for (i = 0; i < count; i++)
  gdev->descs[i].name = names[i];

 kfree(names);
}
