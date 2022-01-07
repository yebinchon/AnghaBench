
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_table_dmar {int flags; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_DMAR ;
 int DMAR_PLATFORM_OPT_IN ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;
 int acpi_put_table (struct acpi_table_header*) ;

bool dmar_platform_optin(void)
{
 struct acpi_table_dmar *dmar;
 acpi_status status;
 bool ret;

 status = acpi_get_table(ACPI_SIG_DMAR, 0,
    (struct acpi_table_header **)&dmar);
 if (ACPI_FAILURE(status))
  return 0;

 ret = !!(dmar->flags & DMAR_PLATFORM_OPT_IN);
 acpi_put_table((struct acpi_table_header *)dmar);

 return ret;
}
