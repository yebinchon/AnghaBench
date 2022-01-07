
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nsets; } ;
struct btree {scalar_t__ written; TYPE_1__* c; TYPE_2__ keys; scalar_t__ level; } ;
struct TYPE_5__ {int sb; int sort; } ;


 int bch_bset_init_next (TYPE_2__*,int ,int ) ;
 int bch_btree_sort (TYPE_2__*,int *) ;
 int bch_btree_sort_lazy (TYPE_2__*,int *) ;
 int bset_magic (int *) ;
 scalar_t__ btree_blocks (struct btree*) ;
 int write_block (struct btree*) ;

__attribute__((used)) static void bch_btree_init_next(struct btree *b)
{

 if (b->level && b->keys.nsets)
  bch_btree_sort(&b->keys, &b->c->sort);
 else
  bch_btree_sort_lazy(&b->keys, &b->c->sort);

 if (b->written < btree_blocks(b))
  bch_bset_init_next(&b->keys, write_block(b),
       bset_magic(&b->c->sb));

}
