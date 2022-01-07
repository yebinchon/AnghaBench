
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct get_registers_context {int err; struct combiner* combiner; int * dev; } ;
struct combiner {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 int EINVAL ;
 int METHOD_NAME__CRS ;
 int acpi_has_method (int ,int ) ;
 int acpi_walk_resources (int ,int ,int ,struct get_registers_context*) ;
 int get_registers_cb ;

__attribute__((used)) static int get_registers(struct platform_device *pdev, struct combiner *comb)
{
 acpi_handle ahandle = ACPI_HANDLE(&pdev->dev);
 acpi_status status;
 struct get_registers_context ctx;

 if (!acpi_has_method(ahandle, METHOD_NAME__CRS))
  return -EINVAL;

 ctx.dev = &pdev->dev;
 ctx.combiner = comb;
 ctx.err = 0;

 status = acpi_walk_resources(ahandle, METHOD_NAME__CRS,
         get_registers_cb, &ctx);
 if (ACPI_FAILURE(status))
  return ctx.err;
 return 0;
}
