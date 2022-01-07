
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_dev_vdata {int dummy; } ;
struct platform_device {int dev; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;


 struct acpi_device_id* acpi_match_device (int ,int *) ;
 int sp_acpi_match ;

__attribute__((used)) static struct sp_dev_vdata *sp_get_acpi_version(struct platform_device *pdev)
{







 return ((void*)0);
}
