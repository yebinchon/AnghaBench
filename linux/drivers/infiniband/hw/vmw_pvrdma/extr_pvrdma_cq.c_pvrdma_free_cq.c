
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvrdma_dev {int dummy; } ;
struct pvrdma_cq {int pdir; int umem; int free; int refcnt; } ;


 int complete (int *) ;
 int ib_umem_release (int ) ;
 int pvrdma_page_dir_cleanup (struct pvrdma_dev*,int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void pvrdma_free_cq(struct pvrdma_dev *dev, struct pvrdma_cq *cq)
{
 if (refcount_dec_and_test(&cq->refcnt))
  complete(&cq->free);
 wait_for_completion(&cq->free);

 ib_umem_release(cq->umem);

 pvrdma_page_dir_cleanup(dev, &cq->pdir);
}
