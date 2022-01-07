
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_variable {int Attributes; int DataSize; int VendorGuid; int Data; int VariableName; } ;
struct compat_efi_variable {int Attributes; int DataSize; int VendorGuid; int Data; int VariableName; } ;


 int EFI_VAR_NAME_LEN ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
copy_out_compat(struct efi_variable *dst, struct compat_efi_variable *src)
{
 memcpy(dst->VariableName, src->VariableName, EFI_VAR_NAME_LEN);
 memcpy(dst->Data, src->Data, sizeof(src->Data));

 dst->VendorGuid = src->VendorGuid;
 dst->DataSize = src->DataSize;
 dst->Attributes = src->Attributes;
}
