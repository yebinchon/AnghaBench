
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int * hv_acpi_dev ;

__attribute__((used)) static int vmbus_exists(void)
{
 if (hv_acpi_dev == ((void*)0))
  return -ENODEV;

 return 0;
}
