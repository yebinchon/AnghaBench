
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_subtable_headers {int dummy; } acpi_subtable_headers ;
struct TYPE_2__ {scalar_t__ type; } ;
struct acpi_pcct_subspace {TYPE_1__ header; } ;


 scalar_t__ ACPI_PCCT_TYPE_RESERVED ;
 int EINVAL ;

__attribute__((used)) static int parse_pcc_subspace(union acpi_subtable_headers *header,
  const unsigned long end)
{
 struct acpi_pcct_subspace *ss = (struct acpi_pcct_subspace *) header;

 if (ss->header.type < ACPI_PCCT_TYPE_RESERVED)
  return 0;

 return -EINVAL;
}
