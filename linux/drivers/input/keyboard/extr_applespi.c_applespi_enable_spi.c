
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct applespi_data {TYPE_1__* spi; int sien; int sist; } ;
typedef int acpi_status ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,int *,int *,unsigned long long*) ;
 int acpi_execute_simple_method (int ,int *,int) ;
 int acpi_format_exception (int ) ;
 int dev_err (int *,char*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int applespi_enable_spi(struct applespi_data *applespi)
{
 acpi_status acpi_sts;
 unsigned long long spi_status;


 acpi_sts = acpi_evaluate_integer(applespi->sist, ((void*)0), ((void*)0),
      &spi_status);
 if (ACPI_SUCCESS(acpi_sts) && spi_status)
  return 0;


 acpi_sts = acpi_execute_simple_method(applespi->sien, ((void*)0), 1);
 if (ACPI_FAILURE(acpi_sts)) {
  dev_err(&applespi->spi->dev, "SIEN failed: %s\n",
   acpi_format_exception(acpi_sts));
  return -ENODEV;
 }







 msleep(50);

 return 0;
}
