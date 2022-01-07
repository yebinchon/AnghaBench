
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree_op {int dummy; } ;
struct btree {int write_lock; int key; TYPE_1__* c; int keys; int parent; int level; } ;
struct TYPE_2__ {int sort; } ;


 int IS_ERR_OR_NULL (struct btree*) ;
 struct btree* bch_btree_node_alloc (TYPE_1__*,struct btree_op*,int ,int ) ;
 int bch_btree_sort_into (int *,int *,int *) ;
 int bkey_copy_key (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct btree *btree_node_alloc_replacement(struct btree *b,
        struct btree_op *op)
{
 struct btree *n = bch_btree_node_alloc(b->c, op, b->level, b->parent);

 if (!IS_ERR_OR_NULL(n)) {
  mutex_lock(&n->write_lock);
  bch_btree_sort_into(&b->keys, &n->keys, &b->c->sort);
  bkey_copy_key(&n->key, &b->key);
  mutex_unlock(&n->write_lock);
 }

 return n;
}
