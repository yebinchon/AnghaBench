
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct psb_mmu_pt {scalar_t__ count; size_t index; int * v; struct psb_mmu_pd* pd; } ;
struct psb_mmu_pd {int hw_context; TYPE_1__* driver; int ** tables; int invalid_pde; int p; } ;
struct TYPE_2__ {int lock; int needs_tlbflush; } ;


 int atomic_set (int *,int) ;
 int * kmap_atomic (int ) ;
 int kunmap_atomic (int *) ;
 int psb_mmu_clflush (TYPE_1__*,void*) ;
 int psb_mmu_free_pt (struct psb_mmu_pt*) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void psb_mmu_pt_unmap_unlock(struct psb_mmu_pt *pt)
{
 struct psb_mmu_pd *pd = pt->pd;
 uint32_t *v;

 kunmap_atomic(pt->v);
 if (pt->count == 0) {
  v = kmap_atomic(pd->p);
  v[pt->index] = pd->invalid_pde;
  pd->tables[pt->index] = ((void*)0);

  if (pd->hw_context != -1) {
   psb_mmu_clflush(pd->driver, (void *)&v[pt->index]);
   atomic_set(&pd->driver->needs_tlbflush, 1);
  }
  kunmap_atomic(v);
  spin_unlock(&pd->driver->lock);
  psb_mmu_free_pt(pt);
  return;
 }
 spin_unlock(&pd->driver->lock);
}
