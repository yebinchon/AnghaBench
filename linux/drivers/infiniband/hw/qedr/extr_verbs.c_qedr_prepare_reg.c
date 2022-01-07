
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {void* lo; void* hi; } ;
struct rdma_sq_fmr_wqe_2nd {TYPE_3__ pbl_addr; int length_lo; scalar_t__ length_hi; scalar_t__ fmr_ctrl; scalar_t__ access_ctrl; } ;
struct TYPE_8__ {void* lo; void* hi; } ;
struct rdma_sq_fmr_wqe_1st {int l_key; TYPE_1__ addr; } ;
struct TYPE_14__ {size_t prod; int pbl; } ;
struct qedr_qp {TYPE_7__ sq; TYPE_6__* wqe_wr_id; } ;
struct TYPE_12__ {TYPE_4__* pbl_table; } ;
struct TYPE_9__ {int length; int page_size; int iova; } ;
struct qedr_mr {TYPE_5__ info; TYPE_2__ ibmr; } ;
struct ib_reg_wr {int access; int key; int mr; } ;
struct TYPE_13__ {struct qedr_mr* mr; } ;
struct TYPE_11__ {int pa; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int RDMA_SQ_FMR_WQE_2ND_ENABLE_ATOMIC ;
 int RDMA_SQ_FMR_WQE_2ND_LOCAL_READ ;
 int RDMA_SQ_FMR_WQE_2ND_LOCAL_WRITE ;
 int RDMA_SQ_FMR_WQE_2ND_PAGE_SIZE_LOG ;
 int RDMA_SQ_FMR_WQE_2ND_REMOTE_READ ;
 int RDMA_SQ_FMR_WQE_2ND_REMOTE_WRITE ;
 int SET_FIELD2 (scalar_t__,int ,int) ;
 struct qedr_mr* get_qedr_mr (int ) ;
 int ilog2 (int ) ;
 void* lower_32_bits (int ) ;
 scalar_t__ qed_chain_produce (int *) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static int qedr_prepare_reg(struct qedr_qp *qp,
       struct rdma_sq_fmr_wqe_1st *fwqe1,
       const struct ib_reg_wr *wr)
{
 struct qedr_mr *mr = get_qedr_mr(wr->mr);
 struct rdma_sq_fmr_wqe_2nd *fwqe2;

 fwqe2 = (struct rdma_sq_fmr_wqe_2nd *)qed_chain_produce(&qp->sq.pbl);
 fwqe1->addr.hi = upper_32_bits(mr->ibmr.iova);
 fwqe1->addr.lo = lower_32_bits(mr->ibmr.iova);
 fwqe1->l_key = wr->key;

 fwqe2->access_ctrl = 0;

 SET_FIELD2(fwqe2->access_ctrl, RDMA_SQ_FMR_WQE_2ND_REMOTE_READ,
     !!(wr->access & IB_ACCESS_REMOTE_READ));
 SET_FIELD2(fwqe2->access_ctrl, RDMA_SQ_FMR_WQE_2ND_REMOTE_WRITE,
     !!(wr->access & IB_ACCESS_REMOTE_WRITE));
 SET_FIELD2(fwqe2->access_ctrl, RDMA_SQ_FMR_WQE_2ND_ENABLE_ATOMIC,
     !!(wr->access & IB_ACCESS_REMOTE_ATOMIC));
 SET_FIELD2(fwqe2->access_ctrl, RDMA_SQ_FMR_WQE_2ND_LOCAL_READ, 1);
 SET_FIELD2(fwqe2->access_ctrl, RDMA_SQ_FMR_WQE_2ND_LOCAL_WRITE,
     !!(wr->access & IB_ACCESS_LOCAL_WRITE));
 fwqe2->fmr_ctrl = 0;

 SET_FIELD2(fwqe2->fmr_ctrl, RDMA_SQ_FMR_WQE_2ND_PAGE_SIZE_LOG,
     ilog2(mr->ibmr.page_size) - 12);

 fwqe2->length_hi = 0;
 fwqe2->length_lo = mr->ibmr.length;
 fwqe2->pbl_addr.hi = upper_32_bits(mr->info.pbl_table->pa);
 fwqe2->pbl_addr.lo = lower_32_bits(mr->info.pbl_table->pa);

 qp->wqe_wr_id[qp->sq.prod].mr = mr;

 return 0;
}
