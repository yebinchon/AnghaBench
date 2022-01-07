
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdma_vl_map {int actual_vls; int vls; int mask; int* engine_to_vl; int list; TYPE_1__** map; } ;
struct sdma_map_elem {int dummy; } ;
struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int flags; int num_sdma; int sde_map_lock; int sdma_map; int * per_sdma; } ;
struct TYPE_2__ {int mask; int ** sde; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HFI1_HAS_SEND_DMA ;
 int OPA_MAX_VLS ;
 int TXE_NUM_SDMA_ENGINES ;
 int call_rcu (int *,int ) ;
 int ilog2 (int) ;
 void* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct sdma_vl_map*) ;
 struct sdma_vl_map* rcu_dereference_protected (int ,int ) ;
 int roundup_pow_of_two (int) ;
 int sdma_map_free (struct sdma_vl_map*) ;
 int sdma_map_rcu_callback ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int sdma_map_init(struct hfi1_devdata *dd, u8 port, u8 num_vls, u8 *vl_engines)
{
 int i, j;
 int extra, sde_per_vl;
 int engine = 0;
 u8 lvl_engines[OPA_MAX_VLS];
 struct sdma_vl_map *oldmap, *newmap;

 if (!(dd->flags & HFI1_HAS_SEND_DMA))
  return 0;

 if (!vl_engines) {

  sde_per_vl = dd->num_sdma / num_vls;

  extra = dd->num_sdma % num_vls;
  vl_engines = lvl_engines;

  for (i = num_vls - 1; i >= 0; i--, extra--)
   vl_engines[i] = sde_per_vl + (extra > 0 ? 1 : 0);
 }

 newmap = kzalloc(
  sizeof(struct sdma_vl_map) +
   roundup_pow_of_two(num_vls) *
   sizeof(struct sdma_map_elem *),
  GFP_KERNEL);
 if (!newmap)
  goto bail;
 newmap->actual_vls = num_vls;
 newmap->vls = roundup_pow_of_two(num_vls);
 newmap->mask = (1 << ilog2(newmap->vls)) - 1;

 for (i = 0; i < TXE_NUM_SDMA_ENGINES; i++)
  newmap->engine_to_vl[i] = -1;
 for (i = 0; i < newmap->vls; i++) {

  int first_engine = engine;

  if (i < newmap->actual_vls) {
   int sz = roundup_pow_of_two(vl_engines[i]);


   newmap->map[i] = kzalloc(
    sizeof(struct sdma_map_elem) +
     sz * sizeof(struct sdma_engine *),
    GFP_KERNEL);
   if (!newmap->map[i])
    goto bail;
   newmap->map[i]->mask = (1 << ilog2(sz)) - 1;

   for (j = 0; j < sz; j++) {
    newmap->map[i]->sde[j] =
     &dd->per_sdma[engine];
    if (++engine >= first_engine + vl_engines[i])

     engine = first_engine;
   }

   for (j = 0; j < vl_engines[i]; j++)
    newmap->engine_to_vl[first_engine + j] = i;
  } else {

   newmap->map[i] = newmap->map[i % num_vls];
  }
  engine = first_engine + vl_engines[i];
 }

 spin_lock_irq(&dd->sde_map_lock);
 oldmap = rcu_dereference_protected(dd->sdma_map,
        lockdep_is_held(&dd->sde_map_lock));


 rcu_assign_pointer(dd->sdma_map, newmap);

 spin_unlock_irq(&dd->sde_map_lock);

 if (oldmap)
  call_rcu(&oldmap->list, sdma_map_rcu_callback);
 return 0;
bail:

 sdma_map_free(newmap);
 return -ENOMEM;
}
