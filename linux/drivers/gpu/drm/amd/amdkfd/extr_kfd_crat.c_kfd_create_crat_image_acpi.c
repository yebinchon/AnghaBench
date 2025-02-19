
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {size_t length; } ;
typedef scalar_t__ acpi_status ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 int CRAT_SIGNATURE ;
 int EINVAL ;
 int ENODATA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* acpi_format_exception (scalar_t__) ;
 scalar_t__ acpi_get_table (int ,int ,struct acpi_table_header**) ;
 scalar_t__ ignore_crat ;
 void* kmemdup (struct acpi_table_header*,size_t,int ) ;
 int pr_err (char*,char const*) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;

int kfd_create_crat_image_acpi(void **crat_image, size_t *size)
{
 struct acpi_table_header *crat_table;
 acpi_status status;
 void *pcrat_image;

 if (!crat_image)
  return -EINVAL;

 *crat_image = ((void*)0);


 status = acpi_get_table(CRAT_SIGNATURE, 0, &crat_table);
 if (status == AE_NOT_FOUND) {
  pr_warn("CRAT table not found\n");
  return -ENODATA;
 } else if (ACPI_FAILURE(status)) {
  const char *err = acpi_format_exception(status);

  pr_err("CRAT table error: %s\n", err);
  return -EINVAL;
 }

 if (ignore_crat) {
  pr_info("CRAT table disabled by module option\n");
  return -ENODATA;
 }

 pcrat_image = kmemdup(crat_table, crat_table->length, GFP_KERNEL);
 if (!pcrat_image)
  return -ENOMEM;

 *crat_image = pcrat_image;
 *size = crat_table->length;

 return 0;
}
