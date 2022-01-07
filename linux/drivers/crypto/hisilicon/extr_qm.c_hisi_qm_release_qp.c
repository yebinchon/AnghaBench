
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qm_dma {int dma; scalar_t__ va; int size; } ;
struct hisi_qp {size_t qp_id; struct qm_dma qdma; struct hisi_qm* qm; } ;
struct hisi_qm {int qps_lock; int qp_bitmap; int ** qp_array; scalar_t__ use_dma_api; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int clear_bit (size_t,int ) ;
 int dma_free_coherent (struct device*,int ,scalar_t__,int ) ;
 int kfree (struct hisi_qp*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void hisi_qm_release_qp(struct hisi_qp *qp)
{
 struct hisi_qm *qm = qp->qm;
 struct qm_dma *qdma = &qp->qdma;
 struct device *dev = &qm->pdev->dev;

 if (qm->use_dma_api && qdma->va)
  dma_free_coherent(dev, qdma->size, qdma->va, qdma->dma);

 write_lock(&qm->qps_lock);
 qm->qp_array[qp->qp_id] = ((void*)0);
 clear_bit(qp->qp_id, qm->qp_bitmap);
 write_unlock(&qm->qps_lock);

 kfree(qp);
}
