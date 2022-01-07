
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TF_SET_CPU_BOOT_ADDR_SMC ;
 unsigned long cpu_boot_addr ;
 int tf_generic_smc (int ,unsigned long,int ) ;

__attribute__((used)) static int tf_set_cpu_boot_addr(int cpu, unsigned long boot_addr)
{
 cpu_boot_addr = boot_addr;
 tf_generic_smc(TF_SET_CPU_BOOT_ADDR_SMC, cpu_boot_addr, 0);

 return 0;
}
