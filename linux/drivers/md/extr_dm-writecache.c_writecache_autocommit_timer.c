
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct dm_writecache {int flush_work; int writeback_wq; } ;


 int autocommit_timer ;
 struct dm_writecache* from_timer (int ,struct timer_list*,int ) ;
 int queue_work (int ,int *) ;
 struct dm_writecache* wc ;
 int writecache_has_error (struct dm_writecache*) ;

__attribute__((used)) static void writecache_autocommit_timer(struct timer_list *t)
{
 struct dm_writecache *wc = from_timer(wc, t, autocommit_timer);
 if (!writecache_has_error(wc))
  queue_work(wc->writeback_wq, &wc->flush_work);
}
