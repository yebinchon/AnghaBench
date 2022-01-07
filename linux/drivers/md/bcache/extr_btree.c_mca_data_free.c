
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
struct btree {TYPE_2__* c; int list; int keys; TYPE_1__ io_mutex; } ;
struct TYPE_4__ {int btree_cache_freed; int btree_cache_used; } ;


 int BUG_ON (int) ;
 int bch_btree_keys_free (int *) ;
 int list_move (int *,int *) ;

__attribute__((used)) static void mca_data_free(struct btree *b)
{
 BUG_ON(b->io_mutex.count != 1);

 bch_btree_keys_free(&b->keys);

 b->c->btree_cache_used--;
 list_move(&b->list, &b->c->btree_cache_freed);
}
