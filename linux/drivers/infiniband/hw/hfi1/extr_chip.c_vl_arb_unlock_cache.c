
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_pportdata {TYPE_1__* vl_arb_cache; } ;
struct TYPE_2__ {int lock; } ;


 int spin_unlock (int *) ;

__attribute__((used)) static inline void vl_arb_unlock_cache(struct hfi1_pportdata *ppd, int idx)
{
 spin_unlock(&ppd->vl_arb_cache[idx].lock);
}
