
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int mode; } ;
struct TYPE_8__ {scalar_t__ fw_vendor; scalar_t__ runtime; scalar_t__ config_table; } ;
struct TYPE_7__ {struct attribute attr; } ;
struct TYPE_6__ {struct attribute attr; } ;
struct TYPE_5__ {struct attribute attr; } ;


 scalar_t__ EFI_INVALID_TABLE_ADDR ;
 int EFI_PARAVIRT ;
 TYPE_4__ efi ;
 TYPE_3__ efi_attr_config_table ;
 TYPE_2__ efi_attr_fw_vendor ;
 TYPE_1__ efi_attr_runtime ;
 scalar_t__ efi_enabled (int ) ;

__attribute__((used)) static umode_t efi_attr_is_visible(struct kobject *kobj,
       struct attribute *attr, int n)
{
 if (attr == &efi_attr_fw_vendor.attr) {
  if (efi_enabled(EFI_PARAVIRT) ||
    efi.fw_vendor == EFI_INVALID_TABLE_ADDR)
   return 0;
 } else if (attr == &efi_attr_runtime.attr) {
  if (efi.runtime == EFI_INVALID_TABLE_ADDR)
   return 0;
 } else if (attr == &efi_attr_config_table.attr) {
  if (efi.config_table == EFI_INVALID_TABLE_ADDR)
   return 0;
 }

 return attr->mode;
}
