
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int efi_status_t ;
struct TYPE_2__ {scalar_t__ runtime_version; } ;


 scalar_t__ EFI_2_00_SYSTEM_TABLE_REVISION ;
 int EFI_NOT_READY ;
 int EFI_UNSUPPORTED ;
 scalar_t__ down_trylock (int *) ;
 TYPE_1__ efi ;
 int efi_call_virt (int ,int ,int *,int *,int *) ;
 int efi_runtime_lock ;
 int query_variable_info ;
 int up (int *) ;

__attribute__((used)) static efi_status_t
virt_efi_query_variable_info_nonblocking(u32 attr,
      u64 *storage_space,
      u64 *remaining_space,
      u64 *max_variable_size)
{
 efi_status_t status;

 if (efi.runtime_version < EFI_2_00_SYSTEM_TABLE_REVISION)
  return EFI_UNSUPPORTED;

 if (down_trylock(&efi_runtime_lock))
  return EFI_NOT_READY;

 status = efi_call_virt(query_variable_info, attr, storage_space,
          remaining_space, max_variable_size);
 up(&efi_runtime_lock);
 return status;
}
