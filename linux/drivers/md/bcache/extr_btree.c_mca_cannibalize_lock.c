
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cache_set {int btree_cache_wait; int btree_cache_alloc_lock; } ;
struct btree_op {int wait; } ;


 int EINTR ;
 int TASK_UNINTERRUPTIBLE ;
 struct task_struct* cmpxchg (int *,int *,struct task_struct*) ;
 struct task_struct* current ;
 int prepare_to_wait (int *,int *,int ) ;

__attribute__((used)) static int mca_cannibalize_lock(struct cache_set *c, struct btree_op *op)
{
 struct task_struct *old;

 old = cmpxchg(&c->btree_cache_alloc_lock, ((void*)0), current);
 if (old && old != current) {
  if (op)
   prepare_to_wait(&c->btree_cache_wait, &op->wait,
     TASK_UNINTERRUPTIBLE);
  return -EINTR;
 }

 return 0;
}
