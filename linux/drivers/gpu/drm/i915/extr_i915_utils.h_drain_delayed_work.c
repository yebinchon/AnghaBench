
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 scalar_t__ delayed_work_pending (struct delayed_work*) ;
 scalar_t__ flush_delayed_work (struct delayed_work*) ;

__attribute__((used)) static inline void drain_delayed_work(struct delayed_work *dw)
{
 do {
  while (flush_delayed_work(dw))
   ;
 } while (delayed_work_pending(dw));
}
