
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efi_rng_protocol {scalar_t__ (* get_rng ) (struct efi_rng_protocol*,int *,unsigned long,int *) ;} ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;


 int EFI_RNG_PROTOCOL_GUID ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ efi_call_early (int ,int *,int *,void**) ;
 int locate_protocol ;
 scalar_t__ stub1 (struct efi_rng_protocol*,int *,unsigned long,int *) ;

efi_status_t efi_get_random_bytes(efi_system_table_t *sys_table_arg,
      unsigned long size, u8 *out)
{
 efi_guid_t rng_proto = EFI_RNG_PROTOCOL_GUID;
 efi_status_t status;
 struct efi_rng_protocol *rng;

 status = efi_call_early(locate_protocol, &rng_proto, ((void*)0),
    (void **)&rng);
 if (status != EFI_SUCCESS)
  return status;

 return rng->get_rng(rng, ((void*)0), size, out);
}
