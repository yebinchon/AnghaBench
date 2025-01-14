
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct keylist {int dummy; } ;
struct closure {int dummy; } ;
struct btree_op {scalar_t__ lock; } ;
struct TYPE_5__ {scalar_t__ last_set_unwritten; } ;
struct btree {TYPE_3__* c; int write_lock; scalar_t__ level; TYPE_1__ keys; } ;
struct bkey {int dummy; } ;
typedef int atomic_t ;
struct TYPE_8__ {scalar_t__ bio_list; } ;
struct TYPE_7__ {TYPE_2__* root; } ;
struct TYPE_6__ {scalar_t__ level; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int EINTR ;
 int bch_btree_init_next (struct btree*) ;
 scalar_t__ bch_btree_insert_keys (struct btree*,struct btree_op*,struct keylist*,struct bkey*) ;
 int bch_btree_leaf_dirty (struct btree*,int *) ;
 int bch_btree_node_write (struct btree*,struct closure*) ;
 scalar_t__ bch_keylist_empty (struct keylist*) ;
 scalar_t__ bch_keylist_nkeys (struct keylist*) ;
 scalar_t__ btree_bset_last (struct btree*) ;
 int btree_split (struct btree*,struct btree_op*,struct keylist*,struct bkey*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 TYPE_4__* current ;
 scalar_t__ insert_u64s_remaining (struct btree*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ write_block (struct btree*) ;

__attribute__((used)) static int bch_btree_insert_node(struct btree *b, struct btree_op *op,
     struct keylist *insert_keys,
     atomic_t *journal_ref,
     struct bkey *replace_key)
{
 struct closure cl;

 BUG_ON(b->level && replace_key);

 closure_init_stack(&cl);

 mutex_lock(&b->write_lock);

 if (write_block(b) != btree_bset_last(b) &&
     b->keys.last_set_unwritten)
  bch_btree_init_next(b);

 if (bch_keylist_nkeys(insert_keys) > insert_u64s_remaining(b)) {
  mutex_unlock(&b->write_lock);
  goto split;
 }

 BUG_ON(write_block(b) != btree_bset_last(b));

 if (bch_btree_insert_keys(b, op, insert_keys, replace_key)) {
  if (!b->level)
   bch_btree_leaf_dirty(b, journal_ref);
  else
   bch_btree_node_write(b, &cl);
 }

 mutex_unlock(&b->write_lock);


 closure_sync(&cl);

 return 0;
split:
 if (current->bio_list) {
  op->lock = b->c->root->level + 1;
  return -EAGAIN;
 } else if (op->lock <= b->c->root->level) {
  op->lock = b->c->root->level + 1;
  return -EINTR;
 } else {

  int ret = btree_split(b, op, insert_keys, replace_key);

  if (bch_keylist_empty(insert_keys))
   return 0;
  else if (!ret)
   return -EINTR;
  return ret;
 }
}
