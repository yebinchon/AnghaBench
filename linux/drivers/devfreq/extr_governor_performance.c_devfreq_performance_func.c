
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq {int dummy; } ;


 unsigned long DEVFREQ_MAX_FREQ ;

__attribute__((used)) static int devfreq_performance_func(struct devfreq *df,
        unsigned long *freq)
{




 *freq = DEVFREQ_MAX_FREQ;
 return 0;
}
