
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dmi_check_system (int ) ;
 int ide_acpi_dmi_table ;

int ide_acpi_init(void)
{
 dmi_check_system(ide_acpi_dmi_table);
 return 0;
}
