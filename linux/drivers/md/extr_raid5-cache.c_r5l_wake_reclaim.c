
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {unsigned long reclaim_target; int reclaim_thread; } ;
typedef scalar_t__ sector_t ;


 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 int md_wakeup_thread (int ) ;

void r5l_wake_reclaim(struct r5l_log *log, sector_t space)
{
 unsigned long target;
 unsigned long new = (unsigned long)space;

 if (!log)
  return;
 do {
  target = log->reclaim_target;
  if (new < target)
   return;
 } while (cmpxchg(&log->reclaim_target, target, new) != target);
 md_wakeup_thread(log->reclaim_thread);
}
