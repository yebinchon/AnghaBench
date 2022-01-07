
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u8 ;
struct iowait {int priority; scalar_t__ starved_cnt; } ;


 int IOWAIT_PRIORITY_STARVE_SHIFT ;

uint iowait_priority_update_top(struct iowait *w,
    struct iowait *top,
    uint idx, uint top_idx)
{
 u8 cnt, tcnt;


 cnt = (w->priority << IOWAIT_PRIORITY_STARVE_SHIFT) + w->starved_cnt;
 tcnt = (top->priority << IOWAIT_PRIORITY_STARVE_SHIFT) +
  top->starved_cnt;
 if (cnt > tcnt)
  return idx;
 else
  return top_idx;
}
