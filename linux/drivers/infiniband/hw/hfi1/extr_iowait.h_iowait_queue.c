
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct iowait {scalar_t__ priority; int list; scalar_t__ starved_cnt; } ;


 int list_add (int *,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static inline void iowait_queue(bool pkts_sent, struct iowait *w,
    struct list_head *wait_head)
{






 if (pkts_sent)
  w->starved_cnt = 0;
 else
  w->starved_cnt++;

 if (w->priority > 0 || !pkts_sent)
  list_add(&w->list, wait_head);
 else
  list_add_tail(&w->list, wait_head);
}
