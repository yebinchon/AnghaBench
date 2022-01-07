
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int dummy; } ;


 int get_online_cpus () ;
 int i8k_smm_func ;
 int put_online_cpus () ;
 int smp_call_on_cpu (int ,int ,struct smm_regs*,int) ;

__attribute__((used)) static int i8k_smm(struct smm_regs *regs)
{
 int ret;

 get_online_cpus();
 ret = smp_call_on_cpu(0, i8k_smm_func, regs, 1);
 put_online_cpus();

 return ret;
}
