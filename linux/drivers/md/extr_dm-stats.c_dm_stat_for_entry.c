
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_stats_aux {unsigned long duration_ns; scalar_t__ merged; } ;
struct dm_stat_shared {int * in_flight; } ;
struct dm_stat_percpu {int* ios; unsigned long* ticks; int * histogram; int * merges; int * sectors; } ;
struct dm_stat {int stat_flags; int n_histogram_entries; unsigned long long* histogram_boundaries; struct dm_stat_percpu** stat_percpu; struct dm_stat_shared* stat_shared; } ;
typedef scalar_t__ sector_t ;


 int STAT_PRECISE_TIMESTAMPS ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int dm_stat_round (struct dm_stat*,struct dm_stat_shared*,struct dm_stat_percpu*) ;
 unsigned long long jiffies_to_msecs (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 size_t smp_processor_id () ;

__attribute__((used)) static void dm_stat_for_entry(struct dm_stat *s, size_t entry,
         int idx, sector_t len,
         struct dm_stats_aux *stats_aux, bool end,
         unsigned long duration_jiffies)
{
 struct dm_stat_shared *shared = &s->stat_shared[entry];
 struct dm_stat_percpu *p;
 preempt_disable();

 p = &s->stat_percpu[smp_processor_id()][entry];

 if (!end) {
  dm_stat_round(s, shared, p);
  atomic_inc(&shared->in_flight[idx]);
 } else {
  unsigned long long duration;
  dm_stat_round(s, shared, p);
  atomic_dec(&shared->in_flight[idx]);
  p->sectors[idx] += len;
  p->ios[idx] += 1;
  p->merges[idx] += stats_aux->merged;
  if (!(s->stat_flags & STAT_PRECISE_TIMESTAMPS)) {
   p->ticks[idx] += duration_jiffies;
   duration = jiffies_to_msecs(duration_jiffies);
  } else {
   p->ticks[idx] += stats_aux->duration_ns;
   duration = stats_aux->duration_ns;
  }
  if (s->n_histogram_entries) {
   unsigned lo = 0, hi = s->n_histogram_entries + 1;
   while (lo + 1 < hi) {
    unsigned mid = (lo + hi) / 2;
    if (s->histogram_boundaries[mid - 1] > duration) {
     hi = mid;
    } else {
     lo = mid;
    }

   }
   p->histogram[lo]++;
  }
 }




 preempt_enable();

}
