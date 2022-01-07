
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct closure {int dummy; } ;
struct TYPE_6__ {unsigned int page_order; TYPE_2__* set; } ;
struct btree {int io_mutex; int write_lock; TYPE_3__ keys; int lock; TYPE_1__* c; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_4__ {int bucket_lock; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int __bch_btree_node_write (struct btree*,struct closure*) ;
 scalar_t__ btree_node_dirty (struct btree*) ;
 scalar_t__ btree_node_journal_flush (struct btree*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int down (int *) ;
 scalar_t__ down_trylock (int *) ;
 int down_write_trylock (int *) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,struct btree*) ;
 int rw_unlock (int,struct btree*) ;
 int udelay (int) ;
 int up (int *) ;

__attribute__((used)) static int mca_reap(struct btree *b, unsigned int min_order, bool flush)
{
 struct closure cl;

 closure_init_stack(&cl);
 lockdep_assert_held(&b->c->bucket_lock);

 if (!down_write_trylock(&b->lock))
  return -ENOMEM;

 BUG_ON(btree_node_dirty(b) && !b->keys.set[0].data);

 if (b->keys.page_order < min_order)
  goto out_unlock;

 if (!flush) {
  if (btree_node_dirty(b))
   goto out_unlock;

  if (down_trylock(&b->io_mutex))
   goto out_unlock;
  up(&b->io_mutex);
 }

retry:





 mutex_lock(&b->write_lock);





 if (btree_node_journal_flush(b)) {
  pr_debug("bnode %p is flushing by journal, retry", b);
  mutex_unlock(&b->write_lock);
  udelay(1);
  goto retry;
 }

 if (btree_node_dirty(b))
  __bch_btree_node_write(b, &cl);
 mutex_unlock(&b->write_lock);

 closure_sync(&cl);


 down(&b->io_mutex);
 up(&b->io_mutex);

 return 0;
out_unlock:
 rw_unlock(1, b);
 return -ENOMEM;
}
