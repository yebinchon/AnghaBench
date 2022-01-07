
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_vl_map {int* engine_to_vl; } ;
struct hfi1_devdata {int sdma_map; } ;


 int TXE_NUM_SDMA_ENGINES ;
 struct sdma_vl_map* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int engine_to_vl(struct hfi1_devdata *dd, int engine)
{
 struct sdma_vl_map *m;
 int vl;


 if (engine < 0 || engine >= TXE_NUM_SDMA_ENGINES)
  return -1;

 rcu_read_lock();
 m = rcu_dereference(dd->sdma_map);
 vl = m->engine_to_vl[engine];
 rcu_read_unlock();

 return vl;
}
