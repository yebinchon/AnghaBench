
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACPI_ACTIVE_HIGH ;
 int ACPI_ACTIVE_LOW ;
 int ACPI_EDGE_SENSITIVE ;
 int ACPI_LEVEL_SENSITIVE ;
 int ACPI_PCCT_INTERRUPT_MODE ;
 int ACPI_PCCT_INTERRUPT_POLARITY ;
 int acpi_register_gsi (int *,int,int,int) ;

__attribute__((used)) static int pcc_map_interrupt(u32 interrupt, u32 flags)
{
 int trigger, polarity;

 if (!interrupt)
  return 0;

 trigger = (flags & ACPI_PCCT_INTERRUPT_MODE) ? ACPI_EDGE_SENSITIVE
   : ACPI_LEVEL_SENSITIVE;

 polarity = (flags & ACPI_PCCT_INTERRUPT_POLARITY) ? ACPI_ACTIVE_LOW
   : ACPI_ACTIVE_HIGH;

 return acpi_register_gsi(((void*)0), interrupt, trigger, polarity);
}
