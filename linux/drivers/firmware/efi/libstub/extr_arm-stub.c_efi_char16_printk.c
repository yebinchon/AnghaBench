
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct efi_simple_text_output_protocol {int (* output_string ) (struct efi_simple_text_output_protocol*,int *) ;} ;
struct TYPE_3__ {scalar_t__ con_out; } ;
typedef TYPE_1__ efi_system_table_t ;
typedef int efi_char16_t ;


 int stub1 (struct efi_simple_text_output_protocol*,int *) ;

void efi_char16_printk(efi_system_table_t *sys_table_arg,
         efi_char16_t *str)
{
 struct efi_simple_text_output_protocol *out;

 out = (struct efi_simple_text_output_protocol *)sys_table_arg->con_out;
 out->output_string(out, str);
}
