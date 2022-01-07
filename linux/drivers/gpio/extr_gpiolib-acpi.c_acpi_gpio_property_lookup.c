
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwnode_reference_args {int nargs; struct fwnode_handle* fwnode; int * args; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {unsigned int quirks; void* adev; } ;
struct acpi_gpio_lookup {int active_low; TYPE_1__ info; int pin_index; int index; } ;
struct acpi_device {int dummy; } ;
typedef int args ;


 int EINVAL ;
 int EPROTO ;
 int __acpi_node_get_property_reference (struct fwnode_handle*,char const*,int,int,struct fwnode_reference_args*) ;
 int acpi_get_driver_gpio_data (struct acpi_device*,char const*,int,struct fwnode_reference_args*,unsigned int*) ;
 int memset (struct fwnode_reference_args*,int ,int) ;
 void* to_acpi_device_node (struct fwnode_handle*) ;

__attribute__((used)) static int acpi_gpio_property_lookup(struct fwnode_handle *fwnode,
         const char *propname, int index,
         struct acpi_gpio_lookup *lookup)
{
 struct fwnode_reference_args args;
 unsigned int quirks = 0;
 int ret;

 memset(&args, 0, sizeof(args));
 ret = __acpi_node_get_property_reference(fwnode, propname, index, 3,
       &args);
 if (ret) {
  struct acpi_device *adev = to_acpi_device_node(fwnode);

  if (!adev)
   return ret;

  if (!acpi_get_driver_gpio_data(adev, propname, index, &args,
            &quirks))
   return ret;
 }




 if (!to_acpi_device_node(args.fwnode))
  return -EINVAL;
 if (args.nargs != 3)
  return -EPROTO;

 lookup->index = args.args[0];
 lookup->pin_index = args.args[1];
 lookup->active_low = !!args.args[2];

 lookup->info.adev = to_acpi_device_node(args.fwnode);
 lookup->info.quirks = quirks;

 return 0;
}
