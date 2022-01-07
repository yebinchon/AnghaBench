
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct iowait_work {TYPE_1__* iow; } ;
struct TYPE_2__ {int count; int tx_count; } ;



__attribute__((used)) static inline void iowait_inc_wait_count(struct iowait_work *w, u16 n)
{
 if (!w)
  return;
 w->iow->tx_count++;
 w->iow->count += n;
}
