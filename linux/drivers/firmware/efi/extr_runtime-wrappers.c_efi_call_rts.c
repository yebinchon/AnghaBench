
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct work_struct {int dummy; } ;
typedef int efi_time_t ;
typedef int efi_time_cap_t ;
typedef int efi_status_t ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;
typedef int efi_capsule_header_t ;
typedef int efi_bool_t ;
struct TYPE_2__ {int efi_rts_id; int efi_rts_comp; int status; void* arg5; void* arg4; void* arg3; void* arg2; void* arg1; } ;







 int EFI_NOT_FOUND ;






 int complete (int *) ;
 int efi_call_virt (int ,unsigned long*,...) ;
 TYPE_1__ efi_rts_work ;
 int get_next_high_mono_count ;
 int get_next_variable ;
 int get_time ;
 int get_variable ;
 int get_wakeup_time ;
 int pr_err (char*) ;
 int query_capsule_caps ;
 int query_variable_info ;
 int set_time ;
 int set_variable ;
 int set_wakeup_time ;
 int update_capsule ;

__attribute__((used)) static void efi_call_rts(struct work_struct *work)
{
 void *arg1, *arg2, *arg3, *arg4, *arg5;
 efi_status_t status = EFI_NOT_FOUND;

 arg1 = efi_rts_work.arg1;
 arg2 = efi_rts_work.arg2;
 arg3 = efi_rts_work.arg3;
 arg4 = efi_rts_work.arg4;
 arg5 = efi_rts_work.arg5;

 switch (efi_rts_work.efi_rts_id) {
 case 136:
  status = efi_call_virt(get_time, (efi_time_t *)arg1,
           (efi_time_cap_t *)arg2);
  break;
 case 131:
  status = efi_call_virt(set_time, (efi_time_t *)arg1);
  break;
 case 134:
  status = efi_call_virt(get_wakeup_time, (efi_bool_t *)arg1,
           (efi_bool_t *)arg2, (efi_time_t *)arg3);
  break;
 case 129:
  status = efi_call_virt(set_wakeup_time, *(efi_bool_t *)arg1,
           (efi_time_t *)arg2);
  break;
 case 135:
  status = efi_call_virt(get_variable, (efi_char16_t *)arg1,
           (efi_guid_t *)arg2, (u32 *)arg3,
           (unsigned long *)arg4, (void *)arg5);
  break;
 case 137:
  status = efi_call_virt(get_next_variable, (unsigned long *)arg1,
           (efi_char16_t *)arg2,
           (efi_guid_t *)arg3);
  break;
 case 130:
  status = efi_call_virt(set_variable, (efi_char16_t *)arg1,
           (efi_guid_t *)arg2, *(u32 *)arg3,
           *(unsigned long *)arg4, (void *)arg5);
  break;
 case 132:
  status = efi_call_virt(query_variable_info, *(u32 *)arg1,
           (u64 *)arg2, (u64 *)arg3, (u64 *)arg4);
  break;
 case 138:
  status = efi_call_virt(get_next_high_mono_count, (u32 *)arg1);
  break;
 case 128:
  status = efi_call_virt(update_capsule,
           (efi_capsule_header_t **)arg1,
           *(unsigned long *)arg2,
           *(unsigned long *)arg3);
  break;
 case 133:
  status = efi_call_virt(query_capsule_caps,
           (efi_capsule_header_t **)arg1,
           *(unsigned long *)arg2, (u64 *)arg3,
           (int *)arg4);
  break;
 default:





  pr_err("Requested executing invalid EFI Runtime Service.\n");
 }
 efi_rts_work.status = status;
 complete(&efi_rts_work.efi_rts_comp);
}
