
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct keylist {int top; } ;
struct gc_stat {int nodes; } ;
struct gc_merge_info {unsigned int keys; struct btree* b; } ;
struct closure {int dummy; } ;
struct btree_op {int dummy; } ;
struct TYPE_6__ {TYPE_1__* set; } ;
struct btree {TYPE_3__* c; struct gc_merge_info key; int write_lock; TYPE_2__ keys; } ;
struct bset {unsigned int keys; struct gc_merge_info* start; } ;
struct bkey {unsigned int keys; struct btree* b; } ;
typedef int r ;
typedef int new_nodes ;
struct TYPE_7__ {int prio_blocked; } ;
struct TYPE_5__ {struct bset* data; } ;


 int BUG_ON (int) ;
 int EINTR ;
 struct btree* ERR_PTR (int) ;
 int GC_MERGE_NODES ;
 scalar_t__ IS_ERR_OR_NULL (struct btree*) ;
 int ZERO_KEY ;
 scalar_t__ __bch_keylist_realloc (struct keylist*,unsigned int) ;
 unsigned int __set_blocks (struct bset*,unsigned int,int ) ;
 int atomic_dec (int *) ;
 int bch_btree_insert_node (struct btree*,struct btree_op*,struct keylist*,int *,int *) ;
 int bch_btree_node_write (struct btree*,struct closure*) ;
 int bch_keylist_add (struct keylist*,struct gc_merge_info*) ;
 int bch_keylist_empty (struct keylist*) ;
 int bch_keylist_free (struct keylist*) ;
 int bch_keylist_init (struct keylist*) ;
 struct gc_merge_info* bch_keylist_pop (struct keylist*) ;
 int bch_keylist_push (struct keylist*) ;
 int bkey_cmp (struct gc_merge_info*,int *) ;
 int bkey_copy_key (struct gc_merge_info*,struct gc_merge_info*) ;
 struct gc_merge_info* bkey_next (struct gc_merge_info*) ;
 unsigned int bkey_u64s (struct gc_merge_info*) ;
 int block_bytes (TYPE_3__*) ;
 struct gc_merge_info* bset_bkey_idx (struct bset*,unsigned int) ;
 struct gc_merge_info* bset_bkey_last (struct bset*) ;
 unsigned int btree_blocks (struct btree*) ;
 struct bset* btree_bset_first (struct btree*) ;
 scalar_t__ btree_check_reserve (struct btree*,int *) ;
 int btree_default_blocks (TYPE_3__*) ;
 struct btree* btree_node_alloc_replacement (struct btree*,int *) ;
 int btree_node_free (struct btree*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int make_btree_freeing_key (struct btree*,int ) ;
 int memcpy (struct gc_merge_info*,struct gc_merge_info*,int) ;
 int memmove (struct gc_merge_info*,struct gc_merge_info*,int) ;
 int memset (struct btree**,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rw_unlock (int,struct btree*) ;
 int trace_bcache_btree_gc_coalesce (unsigned int) ;

__attribute__((used)) static int btree_gc_coalesce(struct btree *b, struct btree_op *op,
        struct gc_stat *gc, struct gc_merge_info *r)
{
 unsigned int i, nodes = 0, keys = 0, blocks;
 struct btree *new_nodes[GC_MERGE_NODES];
 struct keylist keylist;
 struct closure cl;
 struct bkey *k;

 bch_keylist_init(&keylist);

 if (btree_check_reserve(b, ((void*)0)))
  return 0;

 memset(new_nodes, 0, sizeof(new_nodes));
 closure_init_stack(&cl);

 while (nodes < GC_MERGE_NODES && !IS_ERR_OR_NULL(r[nodes].b))
  keys += r[nodes++].keys;

 blocks = btree_default_blocks(b->c) * 2 / 3;

 if (nodes < 2 ||
     __set_blocks(b->keys.set[0].data, keys,
    block_bytes(b->c)) > blocks * (nodes - 1))
  return 0;

 for (i = 0; i < nodes; i++) {
  new_nodes[i] = btree_node_alloc_replacement(r[i].b, ((void*)0));
  if (IS_ERR_OR_NULL(new_nodes[i]))
   goto out_nocoalesce;
 }







 if (btree_check_reserve(b, ((void*)0)))
  goto out_nocoalesce;

 for (i = 0; i < nodes; i++)
  mutex_lock(&new_nodes[i]->write_lock);

 for (i = nodes - 1; i > 0; --i) {
  struct bset *n1 = btree_bset_first(new_nodes[i]);
  struct bset *n2 = btree_bset_first(new_nodes[i - 1]);
  struct bkey *k, *last = ((void*)0);

  keys = 0;

  if (i > 1) {
   for (k = n2->start;
        k < bset_bkey_last(n2);
        k = bkey_next(k)) {
    if (__set_blocks(n1, n1->keys + keys +
       bkey_u64s(k),
       block_bytes(b->c)) > blocks)
     break;

    last = k;
    keys += bkey_u64s(k);
   }
  } else {
   if (__set_blocks(n1, n1->keys + n2->keys,
      block_bytes(b->c)) >
       btree_blocks(new_nodes[i]))
    goto out_nocoalesce;

   keys = n2->keys;

   last = &r->b->key;
  }

  BUG_ON(__set_blocks(n1, n1->keys + keys, block_bytes(b->c)) >
         btree_blocks(new_nodes[i]));

  if (last)
   bkey_copy_key(&new_nodes[i]->key, last);

  memcpy(bset_bkey_last(n1),
         n2->start,
         (void *) bset_bkey_idx(n2, keys) - (void *) n2->start);

  n1->keys += keys;
  r[i].keys = n1->keys;

  memmove(n2->start,
   bset_bkey_idx(n2, keys),
   (void *) bset_bkey_last(n2) -
   (void *) bset_bkey_idx(n2, keys));

  n2->keys -= keys;

  if (__bch_keylist_realloc(&keylist,
       bkey_u64s(&new_nodes[i]->key)))
   goto out_nocoalesce;

  bch_btree_node_write(new_nodes[i], &cl);
  bch_keylist_add(&keylist, &new_nodes[i]->key);
 }

 for (i = 0; i < nodes; i++)
  mutex_unlock(&new_nodes[i]->write_lock);

 closure_sync(&cl);


 BUG_ON(btree_bset_first(new_nodes[0])->keys);
 btree_node_free(new_nodes[0]);
 rw_unlock(1, new_nodes[0]);
 new_nodes[0] = ((void*)0);

 for (i = 0; i < nodes; i++) {
  if (__bch_keylist_realloc(&keylist, bkey_u64s(&r[i].b->key)))
   goto out_nocoalesce;

  make_btree_freeing_key(r[i].b, keylist.top);
  bch_keylist_push(&keylist);
 }

 bch_btree_insert_node(b, op, &keylist, ((void*)0), ((void*)0));
 BUG_ON(!bch_keylist_empty(&keylist));

 for (i = 0; i < nodes; i++) {
  btree_node_free(r[i].b);
  rw_unlock(1, r[i].b);

  r[i].b = new_nodes[i];
 }

 memmove(r, r + 1, sizeof(r[0]) * (nodes - 1));
 r[nodes - 1].b = ERR_PTR(-EINTR);

 trace_bcache_btree_gc_coalesce(nodes);
 gc->nodes--;

 bch_keylist_free(&keylist);


 return -EINTR;

out_nocoalesce:
 closure_sync(&cl);

 while ((k = bch_keylist_pop(&keylist)))
  if (!bkey_cmp(k, &ZERO_KEY))
   atomic_dec(&b->c->prio_blocked);
 bch_keylist_free(&keylist);

 for (i = 0; i < nodes; i++)
  if (!IS_ERR_OR_NULL(new_nodes[i])) {
   btree_node_free(new_nodes[i]);
   rw_unlock(1, new_nodes[i]);
  }
 return 0;
}
