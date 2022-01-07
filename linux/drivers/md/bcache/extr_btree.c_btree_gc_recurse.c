
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gc_stat {scalar_t__ nodes; scalar_t__ nodes_pre; } ;
struct gc_merge_info {struct btree* b; int keys; } ;
struct closure {int dummy; } ;
struct btree_op {int dummy; } ;
struct btree_iter {int dummy; } ;
struct btree {int write_lock; TYPE_1__* c; int key; scalar_t__ level; int keys; } ;
struct bkey {int dummy; } ;
typedef int r ;
struct TYPE_3__ {int search_inflight; int gc_done; } ;


 int ARRAY_SIZE (struct gc_merge_info*) ;
 int EAGAIN ;
 int EINTR ;
 struct btree* ERR_PTR (int ) ;
 int GC_MERGE_NODES ;
 scalar_t__ IS_ERR (struct btree*) ;
 int IS_ERR_OR_NULL (struct btree*) ;
 int PTR_ERR (struct btree*) ;
 scalar_t__ atomic_read (int *) ;
 int bch_btree_iter_init (int *,struct btree_iter*,int *) ;
 struct bkey* bch_btree_iter_next_filter (struct btree_iter*,int *,int ) ;
 struct btree* bch_btree_node_get (TYPE_1__*,struct btree_op*,struct bkey*,scalar_t__,int,struct btree*) ;
 int bch_btree_node_write (struct btree*,struct closure*) ;
 int bch_ptr_bad ;
 int bkey_copy_key (int *,int *) ;
 int btree_gc_coalesce (struct btree*,struct btree_op*,struct gc_stat*,struct gc_merge_info*) ;
 int btree_gc_count_keys (struct btree*) ;
 int btree_gc_mark_node (struct btree*,struct gc_stat*) ;
 scalar_t__ btree_gc_min_nodes (TYPE_1__*) ;
 int btree_gc_rewrite_node (struct btree*,struct btree_op*,struct btree*) ;
 scalar_t__ btree_node_dirty (struct btree*) ;
 int memmove (struct gc_merge_info*,struct gc_merge_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ need_resched () ;
 int rw_unlock (int,struct btree*) ;

__attribute__((used)) static int btree_gc_recurse(struct btree *b, struct btree_op *op,
       struct closure *writes, struct gc_stat *gc)
{
 int ret = 0;
 bool should_rewrite;
 struct bkey *k;
 struct btree_iter iter;
 struct gc_merge_info r[GC_MERGE_NODES];
 struct gc_merge_info *i, *last = r + ARRAY_SIZE(r) - 1;

 bch_btree_iter_init(&b->keys, &iter, &b->c->gc_done);

 for (i = r; i < r + ARRAY_SIZE(r); i++)
  i->b = ERR_PTR(-EINTR);

 while (1) {
  k = bch_btree_iter_next_filter(&iter, &b->keys, bch_ptr_bad);
  if (k) {
   r->b = bch_btree_node_get(b->c, op, k, b->level - 1,
        1, b);
   if (IS_ERR(r->b)) {
    ret = PTR_ERR(r->b);
    break;
   }

   r->keys = btree_gc_count_keys(r->b);

   ret = btree_gc_coalesce(b, op, gc, r);
   if (ret)
    break;
  }

  if (!last->b)
   break;

  if (!IS_ERR(last->b)) {
   should_rewrite = btree_gc_mark_node(last->b, gc);
   if (should_rewrite) {
    ret = btree_gc_rewrite_node(b, op, last->b);
    if (ret)
     break;
   }

   if (last->b->level) {
    ret = btree_gc_recurse(last->b, op, writes, gc);
    if (ret)
     break;
   }

   bkey_copy_key(&b->c->gc_done, &last->b->key);





   mutex_lock(&last->b->write_lock);
   if (btree_node_dirty(last->b))
    bch_btree_node_write(last->b, writes);
   mutex_unlock(&last->b->write_lock);
   rw_unlock(1, last->b);
  }

  memmove(r + 1, r, sizeof(r[0]) * (GC_MERGE_NODES - 1));
  r->b = ((void*)0);

  if (atomic_read(&b->c->search_inflight) &&
      gc->nodes >= gc->nodes_pre + btree_gc_min_nodes(b->c)) {
   gc->nodes_pre = gc->nodes;
   ret = -EAGAIN;
   break;
  }

  if (need_resched()) {
   ret = -EAGAIN;
   break;
  }
 }

 for (i = r; i < r + ARRAY_SIZE(r); i++)
  if (!IS_ERR_OR_NULL(i->b)) {
   mutex_lock(&i->b->write_lock);
   if (btree_node_dirty(i->b))
    bch_btree_node_write(i->b, writes);
   mutex_unlock(&i->b->write_lock);
   rw_unlock(1, i->b);
  }

 return ret;
}
