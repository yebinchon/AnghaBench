
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_time_t ;
typedef int efi_status_t ;
typedef int efi_bool_t ;


 int EFI_ABORTED ;
 int EFI_SET_WAKEUP_TIME ;
 scalar_t__ down_interruptible (int *) ;
 int efi_queue_work (int ,int *,int *,int *,int *,int *) ;
 int efi_runtime_lock ;
 int up (int *) ;

__attribute__((used)) static efi_status_t virt_efi_set_wakeup_time(efi_bool_t enabled, efi_time_t *tm)
{
 efi_status_t status;

 if (down_interruptible(&efi_runtime_lock))
  return EFI_ABORTED;
 status = efi_queue_work(EFI_SET_WAKEUP_TIME, &enabled, tm, ((void*)0), ((void*)0),
    ((void*)0));
 up(&efi_runtime_lock);
 return status;
}
