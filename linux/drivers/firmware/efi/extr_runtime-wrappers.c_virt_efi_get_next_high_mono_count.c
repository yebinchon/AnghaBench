
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int efi_status_t ;


 int EFI_ABORTED ;
 int EFI_GET_NEXT_HIGH_MONO_COUNT ;
 scalar_t__ down_interruptible (int *) ;
 int efi_queue_work (int ,int *,int *,int *,int *,int *) ;
 int efi_runtime_lock ;
 int up (int *) ;

__attribute__((used)) static efi_status_t virt_efi_get_next_high_mono_count(u32 *count)
{
 efi_status_t status;

 if (down_interruptible(&efi_runtime_lock))
  return EFI_ABORTED;
 status = efi_queue_work(EFI_GET_NEXT_HIGH_MONO_COUNT, count, ((void*)0), ((void*)0),
    ((void*)0), ((void*)0));
 up(&efi_runtime_lock);
 return status;
}
