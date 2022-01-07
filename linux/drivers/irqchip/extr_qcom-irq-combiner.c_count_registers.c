
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 int EINVAL ;
 int METHOD_NAME__CRS ;
 int acpi_has_method (int ,int ) ;
 int acpi_walk_resources (int ,int ,int ,int*) ;
 int count_registers_cb ;

__attribute__((used)) static int count_registers(struct platform_device *pdev)
{
 acpi_handle ahandle = ACPI_HANDLE(&pdev->dev);
 acpi_status status;
 int count = 0;

 if (!acpi_has_method(ahandle, METHOD_NAME__CRS))
  return -EINVAL;

 status = acpi_walk_resources(ahandle, METHOD_NAME__CRS,
         count_registers_cb, &count);
 if (ACPI_FAILURE(status))
  return -EINVAL;
 return count;
}
