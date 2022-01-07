
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl_arb_cache {int lock; } ;
struct hfi1_pportdata {struct vl_arb_cache* vl_arb_cache; } ;


 int HI_PRIO_TABLE ;
 int LO_PRIO_TABLE ;
 int spin_lock (int *) ;

__attribute__((used)) static inline struct vl_arb_cache *
vl_arb_lock_cache(struct hfi1_pportdata *ppd, int idx)
{
 if (idx != LO_PRIO_TABLE && idx != HI_PRIO_TABLE)
  return ((void*)0);
 spin_lock(&ppd->vl_arb_cache[idx].lock);
 return &ppd->vl_arb_cache[idx];
}
