
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct sdma_vl_map {size_t mask; struct sdma_map_elem** map; } ;
struct sdma_map_elem {size_t mask; struct sdma_engine** sde; } ;
struct sdma_engine {int this_idx; } ;
struct hfi1_devdata {struct sdma_engine* per_sdma; int sdma_map; } ;


 size_t num_vls ;
 struct sdma_vl_map* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_hfi1_sdma_engine_select (struct hfi1_devdata*,size_t,size_t,int ) ;
 scalar_t__ unlikely (int) ;

struct sdma_engine *sdma_select_engine_vl(
 struct hfi1_devdata *dd,
 u32 selector,
 u8 vl)
{
 struct sdma_vl_map *m;
 struct sdma_map_elem *e;
 struct sdma_engine *rval;





 if (vl >= num_vls) {
  rval = ((void*)0);
  goto done;
 }

 rcu_read_lock();
 m = rcu_dereference(dd->sdma_map);
 if (unlikely(!m)) {
  rcu_read_unlock();
  return &dd->per_sdma[0];
 }
 e = m->map[vl & m->mask];
 rval = e->sde[selector & e->mask];
 rcu_read_unlock();

done:
 rval = !rval ? &dd->per_sdma[0] : rval;
 trace_hfi1_sdma_engine_select(dd, selector, vl, rval->this_idx);
 return rval;
}
