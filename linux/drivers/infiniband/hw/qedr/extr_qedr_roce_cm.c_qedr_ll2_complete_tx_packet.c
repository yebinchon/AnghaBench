
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int gsi_cons; } ;
struct qedr_qp {int q_lock; TYPE_4__ sq; } ;
struct qedr_dev {TYPE_1__* pdev; int gsi_rqcq; struct qedr_cq* gsi_sqcq; struct qedr_qp* gsi_qp; } ;
struct TYPE_7__ {int cq_context; int (* comp_handler ) (TYPE_3__*,int ) ;} ;
struct qedr_cq {TYPE_3__ ibcq; } ;
struct TYPE_6__ {int baddr; int vaddr; int len; } ;
struct qed_roce_ll2_packet {TYPE_2__ header; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {int dev; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,struct qedr_cq*,int ,int ,char*) ;
 int QEDR_MSG_GSI ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (struct qed_roce_ll2_packet*) ;
 int qedr_inc_sw_gsi_cons (TYPE_4__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static void qedr_ll2_complete_tx_packet(void *cxt, u8 connection_handle,
     void *cookie,
     dma_addr_t first_frag_addr,
     bool b_last_fragment,
     bool b_last_packet)
{
 struct qedr_dev *dev = (struct qedr_dev *)cxt;
 struct qed_roce_ll2_packet *pkt = cookie;
 struct qedr_cq *cq = dev->gsi_sqcq;
 struct qedr_qp *qp = dev->gsi_qp;
 unsigned long flags;

 DP_DEBUG(dev, QEDR_MSG_GSI,
   "LL2 TX CB: gsi_sqcq=%p, gsi_rqcq=%p, gsi_cons=%d, ibcq_comp=%s\n",
   dev->gsi_sqcq, dev->gsi_rqcq, qp->sq.gsi_cons,
   cq->ibcq.comp_handler ? "Yes" : "No");

 dma_free_coherent(&dev->pdev->dev, pkt->header.len, pkt->header.vaddr,
     pkt->header.baddr);
 kfree(pkt);

 spin_lock_irqsave(&qp->q_lock, flags);
 qedr_inc_sw_gsi_cons(&qp->sq);
 spin_unlock_irqrestore(&qp->q_lock, flags);

 if (cq->ibcq.comp_handler)
  (*cq->ibcq.comp_handler) (&cq->ibcq, cq->ibcq.cq_context);
}
