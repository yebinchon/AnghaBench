
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int page_order; } ;
struct btree_iter {int dummy; } ;
struct bset_sort_state {int dummy; } ;


 int __btree_sort (struct btree_keys*,struct btree_iter*,int ,int ,int,struct bset_sort_state*) ;

void bch_btree_sort_and_fix_extents(struct btree_keys *b,
        struct btree_iter *iter,
        struct bset_sort_state *state)
{
 __btree_sort(b, iter, 0, b->page_order, 1, state);
}
