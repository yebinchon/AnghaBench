
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct bset_sort_state {unsigned int page_order; int pool; int crit_factor; TYPE_1__ time; } ;


 int int_sqrt (int) ;
 int mempool_init_page_pool (int *,int,unsigned int) ;
 int spin_lock_init (int *) ;

int bch_bset_sort_state_init(struct bset_sort_state *state,
        unsigned int page_order)
{
 spin_lock_init(&state->time.lock);

 state->page_order = page_order;
 state->crit_factor = int_sqrt(1 << page_order);

 return mempool_init_page_pool(&state->pool, 1, page_order);
}
