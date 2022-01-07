
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int gc_thread; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int bch_gc_thread ;
 int kthread_run (int ,struct cache_set*,char*) ;

int bch_gc_thread_start(struct cache_set *c)
{
 c->gc_thread = kthread_run(bch_gc_thread, c, "bcache_gc");
 return PTR_ERR_OR_ZERO(c->gc_thread);
}
