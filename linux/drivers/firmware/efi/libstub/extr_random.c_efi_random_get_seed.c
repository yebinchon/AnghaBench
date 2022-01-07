
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_efi_random_seed {int size; int bits; } ;
struct efi_rng_protocol {scalar_t__ (* get_rng ) (struct efi_rng_protocol*,int *,int ,int ) ;} ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;


 int EFI_RANDOM_SEED_SIZE ;
 int EFI_RNG_ALGORITHM_RAW ;
 int EFI_RNG_PROTOCOL_GUID ;
 int EFI_RUNTIME_SERVICES_DATA ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ EFI_UNSUPPORTED ;
 int LINUX_EFI_RANDOM_SEED_TABLE_GUID ;
 int allocate_pool ;
 scalar_t__ efi_call_early (int ,struct linux_efi_random_seed*,...) ;
 int free_pool ;
 int install_configuration_table ;
 int locate_protocol ;
 scalar_t__ stub1 (struct efi_rng_protocol*,int *,int ,int ) ;
 scalar_t__ stub2 (struct efi_rng_protocol*,int *,int ,int ) ;

efi_status_t efi_random_get_seed(efi_system_table_t *sys_table_arg)
{
 efi_guid_t rng_proto = EFI_RNG_PROTOCOL_GUID;
 efi_guid_t rng_algo_raw = EFI_RNG_ALGORITHM_RAW;
 efi_guid_t rng_table_guid = LINUX_EFI_RANDOM_SEED_TABLE_GUID;
 struct efi_rng_protocol *rng;
 struct linux_efi_random_seed *seed;
 efi_status_t status;

 status = efi_call_early(locate_protocol, &rng_proto, ((void*)0),
    (void **)&rng);
 if (status != EFI_SUCCESS)
  return status;

 status = efi_call_early(allocate_pool, EFI_RUNTIME_SERVICES_DATA,
    sizeof(*seed) + EFI_RANDOM_SEED_SIZE,
    (void **)&seed);
 if (status != EFI_SUCCESS)
  return status;

 status = rng->get_rng(rng, &rng_algo_raw, EFI_RANDOM_SEED_SIZE,
         seed->bits);
 if (status == EFI_UNSUPPORTED)




  status = rng->get_rng(rng, ((void*)0), EFI_RANDOM_SEED_SIZE,
          seed->bits);

 if (status != EFI_SUCCESS)
  goto err_freepool;

 seed->size = EFI_RANDOM_SEED_SIZE;
 status = efi_call_early(install_configuration_table, &rng_table_guid,
    seed);
 if (status != EFI_SUCCESS)
  goto err_freepool;

 return EFI_SUCCESS;

err_freepool:
 efi_call_early(free_pool, seed);
 return status;
}
