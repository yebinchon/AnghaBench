
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btree_keys {int nsets; TYPE_2__* set; } ;
struct bset_sort_state {unsigned int crit_factor; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {unsigned int keys; } ;


 int MAX_BSETS ;
 unsigned int SORT_CRIT ;
 int bch_bset_build_written_tree (struct btree_keys*) ;
 int bch_btree_sort (struct btree_keys*,struct bset_sort_state*) ;
 int bch_btree_sort_partial (struct btree_keys*,int,struct bset_sort_state*) ;

void bch_btree_sort_lazy(struct btree_keys *b, struct bset_sort_state *state)
{
 unsigned int crit = SORT_CRIT;
 int i;


 if (!b->nsets)
  goto out;

 for (i = b->nsets - 1; i >= 0; --i) {
  crit *= state->crit_factor;

  if (b->set[i].data->keys < crit) {
   bch_btree_sort_partial(b, i, state);
   return;
  }
 }


 if (b->nsets + 1 == MAX_BSETS) {
  bch_btree_sort(b, state);
  return;
 }

out:
 bch_bset_build_written_tree(b);
}
