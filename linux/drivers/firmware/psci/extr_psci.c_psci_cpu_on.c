
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t PSCI_FN_CPU_ON ;
 int invoke_psci_fn (int ,unsigned long,unsigned long,int ) ;
 int * psci_function_id ;
 int psci_to_linux_errno (int) ;

__attribute__((used)) static int psci_cpu_on(unsigned long cpuid, unsigned long entry_point)
{
 int err;
 u32 fn;

 fn = psci_function_id[PSCI_FN_CPU_ON];
 err = invoke_psci_fn(fn, cpuid, entry_point, 0);
 return psci_to_linux_errno(err);
}
