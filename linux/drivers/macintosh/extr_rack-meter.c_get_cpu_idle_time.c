
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__* cpustat; } ;


 size_t CPUTIME_IDLE ;
 size_t CPUTIME_IOWAIT ;
 size_t CPUTIME_NICE ;
 TYPE_1__ kcpustat_cpu (unsigned int) ;
 scalar_t__ rackmeter_ignore_nice ;

__attribute__((used)) static inline u64 get_cpu_idle_time(unsigned int cpu)
{
 u64 retval;

 retval = kcpustat_cpu(cpu).cpustat[CPUTIME_IDLE] +
   kcpustat_cpu(cpu).cpustat[CPUTIME_IOWAIT];

 if (rackmeter_ignore_nice)
  retval += kcpustat_cpu(cpu).cpustat[CPUTIME_NICE];

 return retval;
}
