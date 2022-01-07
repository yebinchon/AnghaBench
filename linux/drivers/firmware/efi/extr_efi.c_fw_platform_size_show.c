
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EFI_64BIT ;
 scalar_t__ efi_enabled (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fw_platform_size_show(struct kobject *kobj,
         struct kobj_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", efi_enabled(EFI_64BIT) ? 64 : 32);
}
