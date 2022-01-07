
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int efi_status_t ;
typedef int efi_capsule_header_t ;
struct TYPE_2__ {scalar_t__ runtime_version; } ;


 scalar_t__ EFI_2_00_SYSTEM_TABLE_REVISION ;
 int EFI_ABORTED ;
 int EFI_QUERY_CAPSULE_CAPS ;
 int EFI_UNSUPPORTED ;
 scalar_t__ down_interruptible (int *) ;
 TYPE_1__ efi ;
 int efi_queue_work (int ,int **,unsigned long*,int *,int*,int *) ;
 int efi_runtime_lock ;
 int up (int *) ;

__attribute__((used)) static efi_status_t virt_efi_query_capsule_caps(efi_capsule_header_t **capsules,
      unsigned long count,
      u64 *max_size,
      int *reset_type)
{
 efi_status_t status;

 if (efi.runtime_version < EFI_2_00_SYSTEM_TABLE_REVISION)
  return EFI_UNSUPPORTED;

 if (down_interruptible(&efi_runtime_lock))
  return EFI_ABORTED;
 status = efi_queue_work(EFI_QUERY_CAPSULE_CAPS, capsules, &count,
    max_size, reset_type, ((void*)0));
 up(&efi_runtime_lock);
 return status;
}
