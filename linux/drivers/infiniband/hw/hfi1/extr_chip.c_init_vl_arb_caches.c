
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_pportdata {TYPE_1__* vl_arb_cache; } ;
struct TYPE_2__ {int lock; } ;


 int BUILD_BUG_ON (int) ;
 int MAX_PRIO_TABLE ;
 scalar_t__ VL_ARB_HIGH_PRIO_TABLE_SIZE ;
 scalar_t__ VL_ARB_LOW_PRIO_TABLE_SIZE ;
 scalar_t__ VL_ARB_TABLE_SIZE ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_vl_arb_caches(struct hfi1_pportdata *ppd)
{
 int i;

 BUILD_BUG_ON(VL_ARB_TABLE_SIZE !=
   VL_ARB_LOW_PRIO_TABLE_SIZE);
 BUILD_BUG_ON(VL_ARB_TABLE_SIZE !=
   VL_ARB_HIGH_PRIO_TABLE_SIZE);
 for (i = 0; i < MAX_PRIO_TABLE; i++)
  spin_lock_init(&ppd->vl_arb_cache[i].lock);
}
