
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dmi_check_system (int ) ;
 int run_edge_events_on_boot ;
 int run_edge_events_on_boot_blacklist ;

__attribute__((used)) static int acpi_gpio_setup_params(void)
{
 if (run_edge_events_on_boot < 0) {
  if (dmi_check_system(run_edge_events_on_boot_blacklist))
   run_edge_events_on_boot = 0;
  else
   run_edge_events_on_boot = 1;
 }

 return 0;
}
