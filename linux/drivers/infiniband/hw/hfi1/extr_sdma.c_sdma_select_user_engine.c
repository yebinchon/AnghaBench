
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct sdma_rht_node {struct sdma_rht_map_elem** map; } ;
struct sdma_rht_map_elem {size_t mask; struct sdma_engine** sde; } ;
struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int sdma_rht; } ;
struct TYPE_2__ {int nr_cpus_allowed; } ;


 TYPE_1__* current ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sdma_rht_node* rhashtable_lookup_fast (int ,unsigned long*,int ) ;
 int sdma_rht_params ;
 struct sdma_engine* sdma_select_engine_vl (struct hfi1_devdata*,size_t,size_t) ;
 unsigned long smp_processor_id () ;

struct sdma_engine *sdma_select_user_engine(struct hfi1_devdata *dd,
         u32 selector, u8 vl)
{
 struct sdma_rht_node *rht_node;
 struct sdma_engine *sde = ((void*)0);
 unsigned long cpu_id;





 if (current->nr_cpus_allowed != 1)
  goto out;

 cpu_id = smp_processor_id();
 rcu_read_lock();
 rht_node = rhashtable_lookup_fast(dd->sdma_rht, &cpu_id,
       sdma_rht_params);

 if (rht_node && rht_node->map[vl]) {
  struct sdma_rht_map_elem *map = rht_node->map[vl];

  sde = map->sde[selector & map->mask];
 }
 rcu_read_unlock();

 if (sde)
  return sde;

out:
 return sdma_select_engine_vl(dd, selector, vl);
}
