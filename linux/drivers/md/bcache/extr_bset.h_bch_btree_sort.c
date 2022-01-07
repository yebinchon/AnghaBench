
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int dummy; } ;
struct bset_sort_state {int dummy; } ;


 int bch_btree_sort_partial (struct btree_keys*,int ,struct bset_sort_state*) ;

__attribute__((used)) static inline void bch_btree_sort(struct btree_keys *b,
      struct bset_sort_state *state)
{
 bch_btree_sort_partial(b, 0, state);
}
