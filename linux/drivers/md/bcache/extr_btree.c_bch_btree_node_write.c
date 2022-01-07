
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct closure {int dummy; } ;
struct TYPE_2__ {unsigned int nsets; } ;
struct btree {TYPE_1__ keys; int lock; } ;


 int __bch_btree_node_write (struct btree*,struct closure*) ;
 int bch_btree_init_next (struct btree*) ;
 int bch_btree_verify (struct btree*) ;
 int lockdep_assert_held (int *) ;

void bch_btree_node_write(struct btree *b, struct closure *parent)
{
 unsigned int nsets = b->keys.nsets;

 lockdep_assert_held(&b->lock);

 __bch_btree_node_write(b, parent);





 if (nsets && !b->keys.nsets)
  bch_btree_verify(b);

 bch_btree_init_next(b);
}
