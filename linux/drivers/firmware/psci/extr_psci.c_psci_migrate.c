
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t PSCI_FN_MIGRATE ;
 int invoke_psci_fn (int ,unsigned long,int ,int ) ;
 int * psci_function_id ;
 int psci_to_linux_errno (int) ;

__attribute__((used)) static int psci_migrate(unsigned long cpuid)
{
 int err;
 u32 fn;

 fn = psci_function_id[PSCI_FN_MIGRATE];
 err = invoke_psci_fn(fn, cpuid, 0, 0);
 return psci_to_linux_errno(err);
}
