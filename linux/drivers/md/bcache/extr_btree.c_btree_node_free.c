
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree {TYPE_1__* c; int key; int work; int write_lock; int flags; } ;
struct TYPE_2__ {int bucket_lock; struct btree* root; } ;


 int BTREE_NODE_dirty ;
 int BUG_ON (int) ;
 int bch_bucket_free (TYPE_1__*,int *) ;
 int btree_complete_write (struct btree*,int ) ;
 int btree_current_write (struct btree*) ;
 scalar_t__ btree_node_dirty (struct btree*) ;
 scalar_t__ btree_node_journal_flush (struct btree*) ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int mca_bucket_free (struct btree*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,struct btree*) ;
 int trace_bcache_btree_node_free (struct btree*) ;
 int udelay (int) ;

__attribute__((used)) static void btree_node_free(struct btree *b)
{
 trace_bcache_btree_node_free(b);

 BUG_ON(b == b->c->root);

retry:
 mutex_lock(&b->write_lock);






 if (btree_node_journal_flush(b)) {
  mutex_unlock(&b->write_lock);
  pr_debug("bnode %p journal_flush set, retry", b);
  udelay(1);
  goto retry;
 }

 if (btree_node_dirty(b)) {
  btree_complete_write(b, btree_current_write(b));
  clear_bit(BTREE_NODE_dirty, &b->flags);
 }

 mutex_unlock(&b->write_lock);

 cancel_delayed_work(&b->work);

 mutex_lock(&b->c->bucket_lock);
 bch_bucket_free(b->c, &b->key);
 mca_bucket_free(b);
 mutex_unlock(&b->c->bucket_lock);
}
