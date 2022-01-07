
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efi_generic_dev_path {int length; scalar_t__ type; scalar_t__ sub_type; } ;
typedef int efi_char16_t ;


 scalar_t__ EFI_DEV_END_ENTIRE ;
 scalar_t__ EFI_DEV_END_PATH ;
 scalar_t__ EFI_DEV_END_PATH2 ;

__attribute__((used)) static bool
validate_device_path(efi_char16_t *var_name, int match, u8 *buffer,
       unsigned long len)
{
 struct efi_generic_dev_path *node;
 int offset = 0;

 node = (struct efi_generic_dev_path *)buffer;

 if (len < sizeof(*node))
  return 0;

 while (offset <= len - sizeof(*node) &&
        node->length >= sizeof(*node) &&
  node->length <= len - offset) {
  offset += node->length;

  if ((node->type == EFI_DEV_END_PATH ||
       node->type == EFI_DEV_END_PATH2) &&
      node->sub_type == EFI_DEV_END_ENTIRE)
   return 1;

  node = (struct efi_generic_dev_path *)(buffer + offset);
 }






 return 0;
}
