
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {int top; } ;
struct btree_op {int dummy; } ;
struct btree {int key; } ;


 int BUG_ON (int) ;
 int EINTR ;
 int bch_btree_insert_node (struct btree*,struct btree_op*,struct keylist*,int *,int *) ;
 int bch_btree_node_write_sync (struct btree*) ;
 int bch_keylist_add (struct keylist*,int *) ;
 int bch_keylist_empty (struct keylist*) ;
 int bch_keylist_init (struct keylist*) ;
 int bch_keylist_push (struct keylist*) ;
 scalar_t__ btree_check_reserve (struct btree*,int *) ;
 struct btree* btree_node_alloc_replacement (struct btree*,int *) ;
 int btree_node_free (struct btree*) ;
 int make_btree_freeing_key (struct btree*,int ) ;
 int rw_unlock (int,struct btree*) ;

__attribute__((used)) static int btree_gc_rewrite_node(struct btree *b, struct btree_op *op,
     struct btree *replace)
{
 struct keylist keys;
 struct btree *n;

 if (btree_check_reserve(b, ((void*)0)))
  return 0;

 n = btree_node_alloc_replacement(replace, ((void*)0));


 if (btree_check_reserve(b, ((void*)0))) {
  btree_node_free(n);
  rw_unlock(1, n);
  return 0;
 }

 bch_btree_node_write_sync(n);

 bch_keylist_init(&keys);
 bch_keylist_add(&keys, &n->key);

 make_btree_freeing_key(replace, keys.top);
 bch_keylist_push(&keys);

 bch_btree_insert_node(b, op, &keys, ((void*)0), ((void*)0));
 BUG_ON(!bch_keylist_empty(&keys));

 btree_node_free(replace);
 rw_unlock(1, n);


 return -EINTR;
}
