
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct regpair {int lo; int hi; } ;
struct TYPE_4__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct qedr_cq {scalar_t__ sig; int cnq_notif; TYPE_1__ ibcq; int destroyed; scalar_t__ arm_flags; } ;
struct qedr_cnq {int sb; int index; TYPE_3__* dev; int n_comp; int pbl; int * hw_cons_ptr; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int rdma_ctx; } ;
struct TYPE_5__ {int (* rdma_cnq_prod_update ) (int ,int ,scalar_t__) ;} ;


 int DP_ERR (TYPE_3__*,char*,int ,int ,struct qedr_cq*,...) ;
 scalar_t__ HILO_U64 (int ,int ) ;
 int IGU_INT_DISABLE ;
 int IGU_INT_ENABLE ;
 int IRQ_HANDLED ;
 scalar_t__ QEDR_CQ_MAGIC_NUMBER ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ qed_chain_consume (int *) ;
 scalar_t__ qed_chain_get_cons_idx (int *) ;
 TYPE_2__* qed_ops ;
 int qed_sb_ack (int ,int ,int) ;
 int qed_sb_update_sb_idx (int ) ;
 int rmb () ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (int ,int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t qedr_irq_handler(int irq, void *handle)
{
 u16 hw_comp_cons, sw_comp_cons;
 struct qedr_cnq *cnq = handle;
 struct regpair *cq_handle;
 struct qedr_cq *cq;

 qed_sb_ack(cnq->sb, IGU_INT_DISABLE, 0);

 qed_sb_update_sb_idx(cnq->sb);

 hw_comp_cons = le16_to_cpu(*cnq->hw_cons_ptr);
 sw_comp_cons = qed_chain_get_cons_idx(&cnq->pbl);


 rmb();

 while (sw_comp_cons != hw_comp_cons) {
  cq_handle = (struct regpair *)qed_chain_consume(&cnq->pbl);
  cq = (struct qedr_cq *)(uintptr_t)HILO_U64(cq_handle->hi,
    cq_handle->lo);

  if (cq == ((void*)0)) {
   DP_ERR(cnq->dev,
          "Received NULL CQ cq_handle->hi=%d cq_handle->lo=%d sw_comp_cons=%d hw_comp_cons=%d\n",
          cq_handle->hi, cq_handle->lo, sw_comp_cons,
          hw_comp_cons);

   break;
  }

  if (cq->sig != QEDR_CQ_MAGIC_NUMBER) {
   DP_ERR(cnq->dev,
          "Problem with cq signature, cq_handle->hi=%d ch_handle->lo=%d cq=%p\n",
          cq_handle->hi, cq_handle->lo, cq);
   break;
  }

  cq->arm_flags = 0;

  if (!cq->destroyed && cq->ibcq.comp_handler)
   (*cq->ibcq.comp_handler)
    (&cq->ibcq, cq->ibcq.cq_context);







  cq->cnq_notif++;

  sw_comp_cons = qed_chain_get_cons_idx(&cnq->pbl);

  cnq->n_comp++;
 }

 qed_ops->rdma_cnq_prod_update(cnq->dev->rdma_ctx, cnq->index,
          sw_comp_cons);

 qed_sb_ack(cnq->sb, IGU_INT_ENABLE, 1);

 return IRQ_HANDLED;
}
