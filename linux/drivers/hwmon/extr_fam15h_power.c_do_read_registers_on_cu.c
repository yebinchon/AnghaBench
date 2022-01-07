
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fam15h_power_data {int* cu_on; int * cpu_sw_pwr_ptsc; int * cu_acc_power; } ;
struct TYPE_2__ {int cpu_core_id; } ;


 int MSR_F15H_CU_PWR_ACCUMULATOR ;
 int MSR_F15H_PTSC ;
 TYPE_1__ cpu_data (int) ;
 int rdmsrl_safe (int ,int *) ;
 int smp_processor_id () ;

__attribute__((used)) static void do_read_registers_on_cu(void *_data)
{
 struct fam15h_power_data *data = _data;
 int cpu, cu;

 cpu = smp_processor_id();





 cu = cpu_data(cpu).cpu_core_id;

 rdmsrl_safe(MSR_F15H_CU_PWR_ACCUMULATOR, &data->cu_acc_power[cu]);
 rdmsrl_safe(MSR_F15H_PTSC, &data->cpu_sw_pwr_ptsc[cu]);

 data->cu_on[cu] = 1;
}
