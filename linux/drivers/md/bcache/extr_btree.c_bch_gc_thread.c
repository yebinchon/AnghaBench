
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int flags; int gc_wait; } ;


 int CACHE_SET_IO_DISABLE ;
 int bch_btree_gc (struct cache_set*) ;
 scalar_t__ gc_should_run (struct cache_set*) ;
 scalar_t__ kthread_should_stop () ;
 int set_gc_sectors (struct cache_set*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int) ;
 int wait_for_kthread_stop () ;

__attribute__((used)) static int bch_gc_thread(void *arg)
{
 struct cache_set *c = arg;

 while (1) {
  wait_event_interruptible(c->gc_wait,
      kthread_should_stop() ||
      test_bit(CACHE_SET_IO_DISABLE, &c->flags) ||
      gc_should_run(c));

  if (kthread_should_stop() ||
      test_bit(CACHE_SET_IO_DISABLE, &c->flags))
   break;

  set_gc_sectors(c);
  bch_btree_gc(c);
 }

 wait_for_kthread_stop();
 return 0;
}
