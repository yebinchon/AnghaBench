
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies_timeout (int) ;
 unsigned long schedule_timeout_uninterruptible (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static inline void
wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
{
 unsigned long target_jiffies, tmp_jiffies, remaining_jiffies;





 tmp_jiffies = jiffies;
 target_jiffies = timestamp_jiffies +
    msecs_to_jiffies_timeout(to_wait_ms);

 if (time_after(target_jiffies, tmp_jiffies)) {
  remaining_jiffies = target_jiffies - tmp_jiffies;
  while (remaining_jiffies)
   remaining_jiffies =
       schedule_timeout_uninterruptible(remaining_jiffies);
 }
}
