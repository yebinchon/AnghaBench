
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct keylist {int dummy; } ;
struct btree_op {int lock; } ;
struct TYPE_2__ {scalar_t__* ptr; } ;
struct btree {unsigned long seq; int level; int lock; TYPE_1__ key; } ;
struct bkey {int * ptr; } ;


 int BUG_ON (int) ;
 int EINTR ;
 int PTR_CHECK_DEV ;
 int SET_KEY_PTRS (struct bkey*,int) ;
 int SET_PTR_DEV (struct bkey*,int ,int ) ;
 int bch_btree_insert_node (struct btree*,struct btree_op*,struct keylist*,int *,int *) ;
 int bch_keylist_add (struct keylist*,struct bkey*) ;
 int bch_keylist_empty (struct keylist*) ;
 int bch_keylist_init (struct keylist*) ;
 int downgrade_write (int *) ;
 int get_random_bytes (int *,int) ;
 int rw_lock (int,struct btree*,int) ;
 int rw_unlock (int,struct btree*) ;

int bch_btree_insert_check_key(struct btree *b, struct btree_op *op,
          struct bkey *check_key)
{
 int ret = -EINTR;
 uint64_t btree_ptr = b->key.ptr[0];
 unsigned long seq = b->seq;
 struct keylist insert;
 bool upgrade = op->lock == -1;

 bch_keylist_init(&insert);

 if (upgrade) {
  rw_unlock(0, b);
  rw_lock(1, b, b->level);

  if (b->key.ptr[0] != btree_ptr ||
      b->seq != seq + 1) {
   op->lock = b->level;
   goto out;
  }
 }

 SET_KEY_PTRS(check_key, 1);
 get_random_bytes(&check_key->ptr[0], sizeof(uint64_t));

 SET_PTR_DEV(check_key, 0, PTR_CHECK_DEV);

 bch_keylist_add(&insert, check_key);

 ret = bch_btree_insert_node(b, op, &insert, ((void*)0), ((void*)0));

 BUG_ON(!ret && !bch_keylist_empty(&insert));
out:
 if (upgrade)
  downgrade_write(&b->lock);
 return ret;
}
