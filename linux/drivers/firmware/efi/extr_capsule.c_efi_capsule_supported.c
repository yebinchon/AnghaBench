
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u64 ;
typedef int u32 ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;
struct TYPE_4__ {int headersize; int imagesize; int flags; int guid; } ;
typedef TYPE_1__ efi_capsule_header_t ;
typedef int capsule ;
struct TYPE_5__ {scalar_t__ (* query_capsule_caps ) (TYPE_1__**,int,size_t*,int*) ;} ;


 int EFI_CAPSULE_SUPPORTED_FLAG_MASK ;
 scalar_t__ EFI_SUCCESS ;
 int EINVAL ;
 int ENOSPC ;
 TYPE_3__ efi ;
 int efi_status_to_err (scalar_t__) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ stub1 (TYPE_1__**,int,size_t*,int*) ;

int efi_capsule_supported(efi_guid_t guid, u32 flags, size_t size, int *reset)
{
 efi_capsule_header_t capsule;
 efi_capsule_header_t *cap_list[] = { &capsule };
 efi_status_t status;
 u64 max_size;

 if (flags & ~EFI_CAPSULE_SUPPORTED_FLAG_MASK)
  return -EINVAL;

 capsule.headersize = capsule.imagesize = sizeof(capsule);
 memcpy(&capsule.guid, &guid, sizeof(efi_guid_t));
 capsule.flags = flags;

 status = efi.query_capsule_caps(cap_list, 1, &max_size, reset);
 if (status != EFI_SUCCESS)
  return efi_status_to_err(status);

 if (size > max_size)
  return -ENOSPC;

 return 0;
}
