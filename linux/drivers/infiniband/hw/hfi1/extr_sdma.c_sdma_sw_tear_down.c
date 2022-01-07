
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_state {int dummy; } ;
struct sdma_engine {TYPE_1__* dd; struct sdma_state state; } ;
struct TYPE_2__ {int sdma_unfreeze_wq; int sdma_unfreeze_count; } ;


 int atomic_set (int *,int) ;
 int sdma_put (struct sdma_state*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void sdma_sw_tear_down(struct sdma_engine *sde)
{
 struct sdma_state *ss = &sde->state;


 sdma_put(ss);


 atomic_set(&sde->dd->sdma_unfreeze_count, -1);
 wake_up_interruptible(&sde->dd->sdma_unfreeze_wq);
}
