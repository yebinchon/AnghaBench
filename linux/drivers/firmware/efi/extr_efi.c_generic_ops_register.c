
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int get_next_variable; int set_variable_nonblocking; int set_variable; int get_variable; } ;
struct TYPE_4__ {int query_variable_store; int get_next_variable; int set_variable_nonblocking; int set_variable; int get_variable; } ;


 TYPE_3__ efi ;
 int efi_kobj ;
 int efi_query_variable_store ;
 int efivars_register (int *,TYPE_1__*,int ) ;
 int generic_efivars ;
 TYPE_1__ generic_ops ;

__attribute__((used)) static int generic_ops_register(void)
{
 generic_ops.get_variable = efi.get_variable;
 generic_ops.set_variable = efi.set_variable;
 generic_ops.set_variable_nonblocking = efi.set_variable_nonblocking;
 generic_ops.get_next_variable = efi.get_next_variable;
 generic_ops.query_variable_store = efi_query_variable_store;

 return efivars_register(&generic_efivars, &generic_ops, efi_kobj);
}
