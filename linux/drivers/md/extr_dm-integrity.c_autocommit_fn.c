
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct dm_integrity_c {int commit_work; int commit_wq; } ;


 int autocommit_timer ;
 int dm_integrity_failed (struct dm_integrity_c*) ;
 struct dm_integrity_c* from_timer (int ,struct timer_list*,int ) ;
 struct dm_integrity_c* ic ;
 scalar_t__ likely (int) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void autocommit_fn(struct timer_list *t)
{
 struct dm_integrity_c *ic = from_timer(ic, t, autocommit_timer);

 if (likely(!dm_integrity_failed(ic)))
  queue_work(ic->commit_wq, &ic->commit_work);
}
