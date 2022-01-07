
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hv_stimer_init (unsigned int) ;
 int hv_synic_enable_regs (unsigned int) ;

int hv_synic_init(unsigned int cpu)
{
 hv_synic_enable_regs(cpu);

 hv_stimer_init(cpu);

 return 0;
}
