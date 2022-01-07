
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvrdma_srq {size_t srq_handle; int pdir; int umem; int free; int refcnt; } ;
struct pvrdma_dev {int num_srqs; int srq_tbl_lock; int ** srq_tbl; } ;


 int atomic_dec (int *) ;
 int complete (int *) ;
 int ib_umem_release (int ) ;
 int pvrdma_page_dir_cleanup (struct pvrdma_dev*,int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void pvrdma_free_srq(struct pvrdma_dev *dev, struct pvrdma_srq *srq)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->srq_tbl_lock, flags);
 dev->srq_tbl[srq->srq_handle] = ((void*)0);
 spin_unlock_irqrestore(&dev->srq_tbl_lock, flags);

 if (refcount_dec_and_test(&srq->refcnt))
  complete(&srq->free);
 wait_for_completion(&srq->free);


 ib_umem_release(srq->umem);

 pvrdma_page_dir_cleanup(dev, &srq->pdir);

 atomic_dec(&dev->num_srqs);
}
