
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int efi_status_t ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;


 int EFI_ABORTED ;
 int EFI_GET_VARIABLE ;
 scalar_t__ down_interruptible (int *) ;
 int efi_queue_work (int ,int *,int *,int *,unsigned long*,void*) ;
 int efi_runtime_lock ;
 int up (int *) ;

__attribute__((used)) static efi_status_t virt_efi_get_variable(efi_char16_t *name,
       efi_guid_t *vendor,
       u32 *attr,
       unsigned long *data_size,
       void *data)
{
 efi_status_t status;

 if (down_interruptible(&efi_runtime_lock))
  return EFI_ABORTED;
 status = efi_queue_work(EFI_GET_VARIABLE, name, vendor, attr, data_size,
    data);
 up(&efi_runtime_lock);
 return status;
}
