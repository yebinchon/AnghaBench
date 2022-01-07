
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct acpi_device_id {int dummy; } ;


 struct acpi_device_id const* acpi_match_device (struct acpi_device_id const*,int *) ;

const struct acpi_device_id *
i2c_acpi_match_device(const struct acpi_device_id *matches,
        struct i2c_client *client)
{
 if (!(client && matches))
  return ((void*)0);

 return acpi_match_device(matches, &client->dev);
}
