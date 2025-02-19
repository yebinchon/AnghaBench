
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdma_vl_map {int* engine_to_vl; } ;
struct sdma_engine {size_t this_idx; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int sdma_map; } ;


 int EINVAL ;
 size_t TXE_NUM_SDMA_ENGINES ;
 struct sdma_vl_map* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

int sdma_engine_get_vl(struct sdma_engine *sde)
{
 struct hfi1_devdata *dd = sde->dd;
 struct sdma_vl_map *m;
 u8 vl;

 if (sde->this_idx >= TXE_NUM_SDMA_ENGINES)
  return -EINVAL;

 rcu_read_lock();
 m = rcu_dereference(dd->sdma_map);
 if (unlikely(!m)) {
  rcu_read_unlock();
  return -EINVAL;
 }
 vl = m->engine_to_vl[sde->this_idx];
 rcu_read_unlock();

 return vl;
}
