
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_smbus_cmi {int dummy; } ;
struct acpi_buffer {int member_0; char* member_1; } ;
typedef int node_name ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_SINGLE_NAME ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int acpi_smbus_cmi_add_cap (struct acpi_smbus_cmi*,char*) ;

__attribute__((used)) static acpi_status acpi_smbus_cmi_query_methods(acpi_handle handle, u32 level,
   void *context, void **return_value)
{
 char node_name[5];
 struct acpi_buffer buffer = { sizeof(node_name), node_name };
 struct acpi_smbus_cmi *smbus_cmi = context;
 acpi_status status;

 status = acpi_get_name(handle, ACPI_SINGLE_NAME, &buffer);

 if (ACPI_SUCCESS(status))
  acpi_smbus_cmi_add_cap(smbus_cmi, node_name);

 return AE_OK;
}
