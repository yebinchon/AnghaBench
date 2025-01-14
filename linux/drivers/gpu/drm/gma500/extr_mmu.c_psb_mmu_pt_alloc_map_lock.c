
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct psb_mmu_pt {size_t index; int p; void* v; } ;
struct psb_mmu_pd {int pd_mask; int hw_context; TYPE_1__* driver; struct psb_mmu_pt** tables; int p; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int needs_tlbflush; int lock; } ;


 int atomic_set (int *,int) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int page_to_pfn (int ) ;
 struct psb_mmu_pt* psb_mmu_alloc_pt (struct psb_mmu_pd*) ;
 int psb_mmu_clflush (TYPE_1__*,void*) ;
 int psb_mmu_free_pt (struct psb_mmu_pt*) ;
 size_t psb_mmu_pd_index (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct psb_mmu_pt *psb_mmu_pt_alloc_map_lock(struct psb_mmu_pd *pd,
          unsigned long addr)
{
 uint32_t index = psb_mmu_pd_index(addr);
 struct psb_mmu_pt *pt;
 uint32_t *v;
 spinlock_t *lock = &pd->driver->lock;

 spin_lock(lock);
 pt = pd->tables[index];
 while (!pt) {
  spin_unlock(lock);
  pt = psb_mmu_alloc_pt(pd);
  if (!pt)
   return ((void*)0);
  spin_lock(lock);

  if (pd->tables[index]) {
   spin_unlock(lock);
   psb_mmu_free_pt(pt);
   spin_lock(lock);
   pt = pd->tables[index];
   continue;
  }

  v = kmap_atomic(pd->p);
  pd->tables[index] = pt;
  v[index] = (page_to_pfn(pt->p) << 12) | pd->pd_mask;
  pt->index = index;
  kunmap_atomic((void *) v);

  if (pd->hw_context != -1) {
   psb_mmu_clflush(pd->driver, (void *)&v[index]);
   atomic_set(&pd->driver->needs_tlbflush, 1);
  }
 }
 pt->v = kmap_atomic(pt->p);
 return pt;
}
