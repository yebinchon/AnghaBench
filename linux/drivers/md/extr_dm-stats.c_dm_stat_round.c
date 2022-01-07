
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_stat_shared {unsigned long long stamp; int * in_flight; } ;
struct dm_stat_percpu {unsigned long long* io_ticks; unsigned long long io_ticks_total; unsigned int time_in_queue; } ;
struct dm_stat {int stat_flags; } ;


 size_t READ ;
 int STAT_PRECISE_TIMESTAMPS ;
 size_t WRITE ;
 scalar_t__ atomic_read (int *) ;
 unsigned long long jiffies ;
 int ktime_get () ;
 unsigned long long ktime_to_ns (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void dm_stat_round(struct dm_stat *s, struct dm_stat_shared *shared,
     struct dm_stat_percpu *p)
{



 unsigned long long now, difference;
 unsigned in_flight_read, in_flight_write;

 if (likely(!(s->stat_flags & STAT_PRECISE_TIMESTAMPS)))
  now = jiffies;
 else
  now = ktime_to_ns(ktime_get());

 difference = now - shared->stamp;
 if (!difference)
  return;

 in_flight_read = (unsigned)atomic_read(&shared->in_flight[READ]);
 in_flight_write = (unsigned)atomic_read(&shared->in_flight[WRITE]);
 if (in_flight_read)
  p->io_ticks[READ] += difference;
 if (in_flight_write)
  p->io_ticks[WRITE] += difference;
 if (in_flight_read + in_flight_write) {
  p->io_ticks_total += difference;
  p->time_in_queue += (in_flight_read + in_flight_write) * difference;
 }
 shared->stamp = now;
}
