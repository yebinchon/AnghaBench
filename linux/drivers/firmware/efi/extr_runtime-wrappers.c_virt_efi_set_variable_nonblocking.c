
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int efi_status_t ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;


 int EFI_NOT_READY ;
 scalar_t__ down_trylock (int *) ;
 int efi_call_virt (int ,int *,int *,int ,unsigned long,void*) ;
 int efi_runtime_lock ;
 int set_variable ;
 int up (int *) ;

__attribute__((used)) static efi_status_t
virt_efi_set_variable_nonblocking(efi_char16_t *name, efi_guid_t *vendor,
      u32 attr, unsigned long data_size,
      void *data)
{
 efi_status_t status;

 if (down_trylock(&efi_runtime_lock))
  return EFI_NOT_READY;

 status = efi_call_virt(set_variable, name, vendor, attr, data_size,
          data);
 up(&efi_runtime_lock);
 return status;
}
