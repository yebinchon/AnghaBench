
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bset_sort_state {int pool; } ;


 int mempool_exit (int *) ;

void bch_bset_sort_state_free(struct bset_sort_state *state)
{
 mempool_exit(&state->pool);
}
