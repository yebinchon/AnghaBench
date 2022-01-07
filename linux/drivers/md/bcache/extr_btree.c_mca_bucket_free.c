
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* ptr; } ;
struct btree {TYPE_2__* c; int list; int hash; TYPE_1__ key; } ;
struct TYPE_4__ {int btree_cache_freeable; } ;


 int BUG_ON (int ) ;
 int btree_node_dirty (struct btree*) ;
 int hlist_del_init_rcu (int *) ;
 int list_move (int *,int *) ;

__attribute__((used)) static void mca_bucket_free(struct btree *b)
{
 BUG_ON(btree_node_dirty(b));

 b->key.ptr[0] = 0;
 hlist_del_init_rcu(&b->hash);
 list_move(&b->list, &b->c->btree_cache_freeable);
}
