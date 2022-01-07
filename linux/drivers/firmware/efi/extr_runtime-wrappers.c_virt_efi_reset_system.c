
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int efi_status_t ;
typedef int efi_char16_t ;
struct TYPE_2__ {int efi_rts_id; } ;


 int EFI_RESET_SYSTEM ;
 int __efi_call_virt (int ,int,int ,unsigned long,int *) ;
 scalar_t__ down_interruptible (int *) ;
 TYPE_1__ efi_rts_work ;
 int efi_runtime_lock ;
 int pr_warn (char*) ;
 int reset_system ;
 int up (int *) ;

__attribute__((used)) static void virt_efi_reset_system(int reset_type,
      efi_status_t status,
      unsigned long data_size,
      efi_char16_t *data)
{
 if (down_interruptible(&efi_runtime_lock)) {
  pr_warn("failed to invoke the reset_system() runtime service:\n"
   "could not get exclusive access to the firmware\n");
  return;
 }
 efi_rts_work.efi_rts_id = EFI_RESET_SYSTEM;
 __efi_call_virt(reset_system, reset_type, status, data_size, data);
 up(&efi_runtime_lock);
}
