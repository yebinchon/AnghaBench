
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union t3_wr {int dummy; } t3_wr ;
struct t3_wq {unsigned long size_log2; unsigned long rq_size_log2; int qpid; int rq; int rq_addr; int sq; int queue; } ;
struct cxio_ucontext {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct cxio_rdev {TYPE_2__ rnic_info; } ;
struct TYPE_3__ {int dev; } ;


 int cxio_hal_rqtpool_free (struct cxio_rdev*,int ,unsigned long) ;
 int dma_free_coherent (int *,unsigned long,int ,int ) ;
 int dma_unmap_addr (struct t3_wq*,int ) ;
 int kfree (int ) ;
 int mapping ;
 int put_qpid (struct cxio_rdev*,int ,struct cxio_ucontext*) ;

int cxio_destroy_qp(struct cxio_rdev *rdev_p, struct t3_wq *wq,
      struct cxio_ucontext *uctx)
{
 dma_free_coherent(&(rdev_p->rnic_info.pdev->dev),
     (1UL << (wq->size_log2))
     * sizeof(union t3_wr), wq->queue,
     dma_unmap_addr(wq, mapping));
 kfree(wq->sq);
 cxio_hal_rqtpool_free(rdev_p, wq->rq_addr, (1UL << wq->rq_size_log2));
 kfree(wq->rq);
 put_qpid(rdev_p, wq->qpid, uctx);
 return 0;
}
