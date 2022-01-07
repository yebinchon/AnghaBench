
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; } ;


 int MSR_IA32_FEATURE_CONTROL ;
 int MSR_PKG_CST_CONFIG_CONTROL ;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int max_cstate ;
 int mwait_substates ;
 int rdmsrl (int ,unsigned long long) ;
 TYPE_1__* skl_cstates ;

__attribute__((used)) static void sklh_idle_state_table_update(void)
{
 unsigned long long msr;
 unsigned int eax, ebx, ecx, edx;



 if (max_cstate <= 7)
  return;


 if ((mwait_substates & (0xF << 28)) == 0)
  return;

 rdmsrl(MSR_PKG_CST_CONFIG_CONTROL, msr);


 if ((msr & 0xF) != 8)
  return;

 ecx = 0;
 cpuid(7, &eax, &ebx, &ecx, &edx);


 if (ebx & (1 << 2)) {

  rdmsrl(MSR_IA32_FEATURE_CONTROL, msr);


  if (msr & (1 << 18))
   return;
 }

 skl_cstates[5].disabled = 1;
 skl_cstates[6].disabled = 1;
}
