
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btree_keys {size_t page_order; unsigned int nsets; TYPE_2__* set; } ;
struct btree_iter {int dummy; } ;
struct bset_sort_state {int dummy; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {scalar_t__ keys; } ;


 int EBUG_ON (int) ;
 int __bch_btree_iter_init (struct btree_keys*,struct btree_iter*,int *,TYPE_2__*) ;
 int __btree_sort (struct btree_keys*,struct btree_iter*,unsigned int,size_t,int,struct bset_sort_state*) ;
 int __set_bytes (TYPE_1__*,size_t) ;
 int bch_count_data (struct btree_keys*) ;
 size_t get_order (int ) ;

void bch_btree_sort_partial(struct btree_keys *b, unsigned int start,
       struct bset_sort_state *state)
{
 size_t order = b->page_order, keys = 0;
 struct btree_iter iter;
 int oldsize = bch_count_data(b);

 __bch_btree_iter_init(b, &iter, ((void*)0), &b->set[start]);

 if (start) {
  unsigned int i;

  for (i = start; i <= b->nsets; i++)
   keys += b->set[i].data->keys;

  order = get_order(__set_bytes(b->set->data, keys));
 }

 __btree_sort(b, &iter, start, order, 0, state);

 EBUG_ON(oldsize >= 0 && bch_count_data(b) != oldsize);
}
