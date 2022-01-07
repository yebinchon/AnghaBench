
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int exit_latency; unsigned int target_residency; } ;


 int MSR_PKGC10_IRTL ;
 int MSR_PKGC6_IRTL ;
 int MSR_PKGC7_IRTL ;
 int MSR_PKGC8_IRTL ;
 int MSR_PKGC9_IRTL ;
 TYPE_1__* bxt_cstates ;
 unsigned int irtl_2_usec (unsigned long long) ;
 int rdmsrl (int ,unsigned long long) ;

__attribute__((used)) static void bxt_idle_state_table_update(void)
{
 unsigned long long msr;
 unsigned int usec;

 rdmsrl(MSR_PKGC6_IRTL, msr);
 usec = irtl_2_usec(msr);
 if (usec) {
  bxt_cstates[2].exit_latency = usec;
  bxt_cstates[2].target_residency = usec;
 }

 rdmsrl(MSR_PKGC7_IRTL, msr);
 usec = irtl_2_usec(msr);
 if (usec) {
  bxt_cstates[3].exit_latency = usec;
  bxt_cstates[3].target_residency = usec;
 }

 rdmsrl(MSR_PKGC8_IRTL, msr);
 usec = irtl_2_usec(msr);
 if (usec) {
  bxt_cstates[4].exit_latency = usec;
  bxt_cstates[4].target_residency = usec;
 }

 rdmsrl(MSR_PKGC9_IRTL, msr);
 usec = irtl_2_usec(msr);
 if (usec) {
  bxt_cstates[5].exit_latency = usec;
  bxt_cstates[5].target_residency = usec;
 }

 rdmsrl(MSR_PKGC10_IRTL, msr);
 usec = irtl_2_usec(msr);
 if (usec) {
  bxt_cstates[6].exit_latency = usec;
  bxt_cstates[6].target_residency = usec;
 }

}
