
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfreq {unsigned long previous_freq; unsigned long last_stat_updated; int total_trans; TYPE_1__* profile; int * trans_table; int * time_in_state; } ;
struct TYPE_2__ {int max_state; } ;


 int devfreq_get_freq_level (struct devfreq*,unsigned long) ;
 unsigned long jiffies ;

int devfreq_update_status(struct devfreq *devfreq, unsigned long freq)
{
 int lev, prev_lev, ret = 0;
 unsigned long cur_time;

 cur_time = jiffies;


 if (!devfreq->previous_freq)
  goto out;

 prev_lev = devfreq_get_freq_level(devfreq, devfreq->previous_freq);
 if (prev_lev < 0) {
  ret = prev_lev;
  goto out;
 }

 devfreq->time_in_state[prev_lev] +=
    cur_time - devfreq->last_stat_updated;

 lev = devfreq_get_freq_level(devfreq, freq);
 if (lev < 0) {
  ret = lev;
  goto out;
 }

 if (lev != prev_lev) {
  devfreq->trans_table[(prev_lev *
    devfreq->profile->max_state) + lev]++;
  devfreq->total_trans++;
 }

out:
 devfreq->last_stat_updated = cur_time;
 return ret;
}
