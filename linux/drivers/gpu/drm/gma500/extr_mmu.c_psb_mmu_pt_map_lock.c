
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct psb_mmu_pt {int p; int v; } ;
struct psb_mmu_pd {struct psb_mmu_pt** tables; TYPE_1__* driver; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int lock; } ;


 int kmap_atomic (int ) ;
 size_t psb_mmu_pd_index (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct psb_mmu_pt *psb_mmu_pt_map_lock(struct psb_mmu_pd *pd,
           unsigned long addr)
{
 uint32_t index = psb_mmu_pd_index(addr);
 struct psb_mmu_pt *pt;
 spinlock_t *lock = &pd->driver->lock;

 spin_lock(lock);
 pt = pd->tables[index];
 if (!pt) {
  spin_unlock(lock);
  return ((void*)0);
 }
 pt->v = kmap_atomic(pt->p);
 return pt;
}
