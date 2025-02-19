
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned short start; char* name; int flags; int end; } ;


 int ENOMEM ;
 int IORESOURCE_IO ;
 int SIS5595_EXTENT ;
 int acpi_check_resource_conflict (struct resource*) ;
 int pdev ;
 int platform_device_add (int ) ;
 int platform_device_add_resources (int ,struct resource*,int) ;
 int platform_device_alloc (char*,unsigned short) ;
 int platform_device_put (int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int sis5595_device_add(unsigned short address)
{
 struct resource res = {
  .start = address,
  .end = address + SIS5595_EXTENT - 1,
  .name = "sis5595",
  .flags = IORESOURCE_IO,
 };
 int err;

 err = acpi_check_resource_conflict(&res);
 if (err)
  goto exit;

 pdev = platform_device_alloc("sis5595", address);
 if (!pdev) {
  err = -ENOMEM;
  pr_err("Device allocation failed\n");
  goto exit;
 }

 err = platform_device_add_resources(pdev, &res, 1);
 if (err) {
  pr_err("Device resource addition failed (%d)\n", err);
  goto exit_device_put;
 }

 err = platform_device_add(pdev);
 if (err) {
  pr_err("Device addition failed (%d)\n", err);
  goto exit_device_put;
 }

 return 0;

exit_device_put:
 platform_device_put(pdev);
exit:
 return err;
}
