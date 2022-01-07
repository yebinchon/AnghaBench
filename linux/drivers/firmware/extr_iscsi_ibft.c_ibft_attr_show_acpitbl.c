
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibft_kobject {TYPE_2__* header; } ;
typedef int ssize_t ;
struct TYPE_3__ {int oem_table_id; int oem_id; int signature; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int ACPI_NAMESEG_SIZE ;
 int ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;



 int sprintf_string (char*,int ,int ) ;

__attribute__((used)) static ssize_t ibft_attr_show_acpitbl(void *data, int type, char *buf)
{
 struct ibft_kobject *entry = data;
 char *str = buf;

 switch (type) {
 case 128:
  str += sprintf_string(str, ACPI_NAMESEG_SIZE,
          entry->header->header.signature);
  break;
 case 130:
  str += sprintf_string(str, ACPI_OEM_ID_SIZE,
          entry->header->header.oem_id);
  break;
 case 129:
  str += sprintf_string(str, ACPI_OEM_TABLE_ID_SIZE,
          entry->header->header.oem_table_id);
  break;
 default:
  break;
 }

 return str - buf;
}
