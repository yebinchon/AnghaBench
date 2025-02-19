
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int efi_status_t ;
typedef int efi_capsule_header_t ;
struct TYPE_2__ {scalar_t__ runtime_version; } ;


 scalar_t__ EFI_2_00_SYSTEM_TABLE_REVISION ;
 int EFI_ABORTED ;
 int EFI_UNSUPPORTED ;
 int EFI_UPDATE_CAPSULE ;
 scalar_t__ down_interruptible (int *) ;
 TYPE_1__ efi ;
 int efi_queue_work (int ,int **,unsigned long*,unsigned long*,int *,int *) ;
 int efi_runtime_lock ;
 int up (int *) ;

__attribute__((used)) static efi_status_t virt_efi_update_capsule(efi_capsule_header_t **capsules,
         unsigned long count,
         unsigned long sg_list)
{
 efi_status_t status;

 if (efi.runtime_version < EFI_2_00_SYSTEM_TABLE_REVISION)
  return EFI_UNSUPPORTED;

 if (down_interruptible(&efi_runtime_lock))
  return EFI_ABORTED;
 status = efi_queue_work(EFI_UPDATE_CAPSULE, capsules, &count, &sg_list,
    ((void*)0), ((void*)0));
 up(&efi_runtime_lock);
 return status;
}
