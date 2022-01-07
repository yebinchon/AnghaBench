
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cache {struct task_struct* alloc_thread; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int bch_allocator_thread ;
 struct task_struct* kthread_run (int ,struct cache*,char*) ;

int bch_cache_allocator_start(struct cache *ca)
{
 struct task_struct *k = kthread_run(bch_allocator_thread,
         ca, "bcache_allocator");
 if (IS_ERR(k))
  return PTR_ERR(k);

 ca->alloc_thread = k;
 return 0;
}
