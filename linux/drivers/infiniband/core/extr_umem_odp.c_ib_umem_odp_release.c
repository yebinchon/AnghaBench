
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owning_mm; } ;
struct ib_umem_odp {TYPE_1__ umem; int notifier_completion; int interval_tree; int is_implicit_odp; int page_list; int dma_list; int umem_mutex; struct ib_ucontext_per_mm* per_mm; } ;
struct ib_ucontext_per_mm {int umem_rwsem; int mn; int umem_tree; } ;


 int complete_all (int *) ;
 int down_write (int *) ;
 int ib_umem_end (struct ib_umem_odp*) ;
 int ib_umem_odp_unmap_dma_pages (struct ib_umem_odp*,int ,int ) ;
 int ib_umem_start (struct ib_umem_odp*) ;
 int interval_tree_remove (int *,int *) ;
 int kfree (struct ib_umem_odp*) ;
 int kvfree (int ) ;
 int mmdrop (int ) ;
 int mmu_notifier_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;

void ib_umem_odp_release(struct ib_umem_odp *umem_odp)
{
 struct ib_ucontext_per_mm *per_mm = umem_odp->per_mm;







 if (!umem_odp->is_implicit_odp) {
  mutex_lock(&umem_odp->umem_mutex);
  ib_umem_odp_unmap_dma_pages(umem_odp, ib_umem_start(umem_odp),
         ib_umem_end(umem_odp));
  mutex_unlock(&umem_odp->umem_mutex);
  kvfree(umem_odp->dma_list);
  kvfree(umem_odp->page_list);
 }

 down_write(&per_mm->umem_rwsem);
 if (!umem_odp->is_implicit_odp) {
  interval_tree_remove(&umem_odp->interval_tree,
         &per_mm->umem_tree);
  complete_all(&umem_odp->notifier_completion);
 }
 mmu_notifier_put(&per_mm->mn);
 up_write(&per_mm->umem_rwsem);

 mmdrop(umem_odp->umem.owning_mm);
 kfree(umem_odp);
}
