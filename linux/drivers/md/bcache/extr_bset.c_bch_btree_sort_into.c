
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct btree_keys {TYPE_1__* set; } ;
struct btree_iter {int dummy; } ;
struct bset_sort_state {int time; } ;
struct TYPE_2__ {scalar_t__ size; int data; } ;


 int bch_btree_iter_init (struct btree_keys*,struct btree_iter*,int *) ;
 int bch_time_stats_update (int *,int ) ;
 int btree_mergesort (struct btree_keys*,int ,struct btree_iter*,int,int) ;
 int local_clock () ;

void bch_btree_sort_into(struct btree_keys *b, struct btree_keys *new,
    struct bset_sort_state *state)
{
 uint64_t start_time = local_clock();
 struct btree_iter iter;

 bch_btree_iter_init(b, &iter, ((void*)0));

 btree_mergesort(b, new->set->data, &iter, 0, 1);

 bch_time_stats_update(&state->time, start_time);

 new->set->size = 0;
}
