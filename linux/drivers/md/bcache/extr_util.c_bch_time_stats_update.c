
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct time_stats {int last; int average_duration; int average_frequency; int lock; int max_duration; } ;


 int ewma_add (int,int,int,int) ;
 int local_clock () ;
 int max (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after64 (int,int) ;

void bch_time_stats_update(struct time_stats *stats, uint64_t start_time)
{
 uint64_t now, duration, last;

 spin_lock(&stats->lock);

 now = local_clock();
 duration = time_after64(now, start_time)
  ? now - start_time : 0;
 last = time_after64(now, stats->last)
  ? now - stats->last : 0;

 stats->max_duration = max(stats->max_duration, duration);

 if (stats->last) {
  ewma_add(stats->average_duration, duration, 8, 8);

  if (stats->average_frequency)
   ewma_add(stats->average_frequency, last, 8, 8);
  else
   stats->average_frequency = last << 8;
 } else {
  stats->average_duration = duration << 8;
 }

 stats->last = now ?: 1;

 spin_unlock(&stats->lock);
}
