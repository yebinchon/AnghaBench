
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int query_capsule_caps; int update_capsule; int query_variable_info_nonblocking; int query_variable_info; int reset_system; int get_next_high_mono_count; int set_variable_nonblocking; int set_variable; int get_next_variable; int get_variable; int set_wakeup_time; int get_wakeup_time; int set_time; int get_time; } ;


 TYPE_1__ efi ;
 int virt_efi_get_next_high_mono_count ;
 int virt_efi_get_next_variable ;
 int virt_efi_get_time ;
 int virt_efi_get_variable ;
 int virt_efi_get_wakeup_time ;
 int virt_efi_query_capsule_caps ;
 int virt_efi_query_variable_info ;
 int virt_efi_query_variable_info_nonblocking ;
 int virt_efi_reset_system ;
 int virt_efi_set_time ;
 int virt_efi_set_variable ;
 int virt_efi_set_variable_nonblocking ;
 int virt_efi_set_wakeup_time ;
 int virt_efi_update_capsule ;

void efi_native_runtime_setup(void)
{
 efi.get_time = virt_efi_get_time;
 efi.set_time = virt_efi_set_time;
 efi.get_wakeup_time = virt_efi_get_wakeup_time;
 efi.set_wakeup_time = virt_efi_set_wakeup_time;
 efi.get_variable = virt_efi_get_variable;
 efi.get_next_variable = virt_efi_get_next_variable;
 efi.set_variable = virt_efi_set_variable;
 efi.set_variable_nonblocking = virt_efi_set_variable_nonblocking;
 efi.get_next_high_mono_count = virt_efi_get_next_high_mono_count;
 efi.reset_system = virt_efi_reset_system;
 efi.query_variable_info = virt_efi_query_variable_info;
 efi.query_variable_info_nonblocking = virt_efi_query_variable_info_nonblocking;
 efi.update_capsule = virt_efi_update_capsule;
 efi.query_capsule_caps = virt_efi_query_capsule_caps;
}
