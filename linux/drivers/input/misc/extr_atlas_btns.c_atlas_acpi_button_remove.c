
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_atlas_button_handler ;
 int acpi_remove_address_space_handler (int ,int,int *) ;
 int input_dev ;
 int input_unregister_device (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int atlas_acpi_button_remove(struct acpi_device *device)
{
 acpi_status status;

 status = acpi_remove_address_space_handler(device->handle,
    0x81, &acpi_atlas_button_handler);
 if (ACPI_FAILURE(status))
  pr_err("error removing addr spc handler\n");

 input_unregister_device(input_dev);

 return 0;
}
