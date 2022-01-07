
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct closure {int dummy; } ;
struct btree {TYPE_1__* c; int list; int key; int written; } ;
struct TYPE_5__ {scalar_t__ prio; } ;
struct TYPE_4__ {struct btree* root; int bucket_lock; } ;


 scalar_t__ BTREE_PRIO ;
 int BUG_ON (int) ;
 unsigned int KEY_PTRS (int *) ;
 TYPE_2__* PTR_BUCKET (TYPE_1__*,int *,unsigned int) ;
 int bch_journal_meta (TYPE_1__*,struct closure*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_bcache_btree_set_root (struct btree*) ;

void bch_btree_set_root(struct btree *b)
{
 unsigned int i;
 struct closure cl;

 closure_init_stack(&cl);

 trace_bcache_btree_set_root(b);

 BUG_ON(!b->written);

 for (i = 0; i < KEY_PTRS(&b->key); i++)
  BUG_ON(PTR_BUCKET(b->c, &b->key, i)->prio != BTREE_PRIO);

 mutex_lock(&b->c->bucket_lock);
 list_del_init(&b->list);
 mutex_unlock(&b->c->bucket_lock);

 b->c->root = b;

 bch_journal_meta(b->c, &cl);
 closure_sync(&cl);
}
