
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfreq {TYPE_1__* profile; } ;
struct TYPE_2__ {int max_state; unsigned long* freq_table; } ;


 int EINVAL ;

__attribute__((used)) static int devfreq_get_freq_level(struct devfreq *devfreq, unsigned long freq)
{
 int lev;

 for (lev = 0; lev < devfreq->profile->max_state; lev++)
  if (freq == devfreq->profile->freq_table[lev])
   return lev;

 return -EINVAL;
}
