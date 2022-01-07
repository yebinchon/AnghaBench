
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree {struct btree* parent; TYPE_1__* c; scalar_t__ level; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {int bucket_lock; } ;


 int IS_ERR_OR_NULL (struct btree*) ;
 int bch_btree_node_read (struct btree*) ;
 struct btree* mca_alloc (TYPE_1__*,int *,struct bkey*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rw_unlock (int,struct btree*) ;

__attribute__((used)) static void btree_node_prefetch(struct btree *parent, struct bkey *k)
{
 struct btree *b;

 mutex_lock(&parent->c->bucket_lock);
 b = mca_alloc(parent->c, ((void*)0), k, parent->level - 1);
 mutex_unlock(&parent->c->bucket_lock);

 if (!IS_ERR_OR_NULL(b)) {
  b->parent = parent;
  bch_btree_node_read(b);
  rw_unlock(1, b);
 }
}
