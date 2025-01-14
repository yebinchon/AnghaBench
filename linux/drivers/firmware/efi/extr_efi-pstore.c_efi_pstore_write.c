
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct pstore_record {int part; int count; int type; scalar_t__ reason; TYPE_2__* psi; int size; scalar_t__ compressed; TYPE_1__ time; int id; } ;
typedef int name ;
typedef int efi_guid_t ;
typedef char efi_char16_t ;
struct TYPE_4__ {int buf; } ;


 int DUMP_NAME_LEN ;
 scalar_t__ KMSG_DUMP_OOPS ;
 int LINUX_EFI_CRASH_GUID ;
 int PSTORE_EFI_ATTRIBUTES ;
 int efivar_entry_set_safe (char*,int ,int ,int ,int ,int ) ;
 int efivar_run_worker () ;
 int generic_id (scalar_t__,int,int) ;
 int memset (char*,int ,int) ;
 int preemptible () ;
 int snprintf (char*,int,char*,int,int,int,long long,char) ;

__attribute__((used)) static int efi_pstore_write(struct pstore_record *record)
{
 char name[DUMP_NAME_LEN];
 efi_char16_t efi_name[DUMP_NAME_LEN];
 efi_guid_t vendor = LINUX_EFI_CRASH_GUID;
 int i, ret = 0;

 record->id = generic_id(record->time.tv_sec, record->part,
    record->count);


 memset(name, 0, sizeof(name));

 snprintf(name, sizeof(name), "dump-type%u-%u-%d-%lld-%c",
   record->type, record->part, record->count,
   (long long)record->time.tv_sec,
   record->compressed ? 'C' : 'D');

 for (i = 0; i < DUMP_NAME_LEN; i++)
  efi_name[i] = name[i];

 ret = efivar_entry_set_safe(efi_name, vendor, PSTORE_EFI_ATTRIBUTES,
         preemptible(), record->size, record->psi->buf);

 if (record->reason == KMSG_DUMP_OOPS)
  efivar_run_worker();

 return ret;
}
