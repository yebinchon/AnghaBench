
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct rdma_sq_send_wqe_2st {int dummy; } ;
struct rdma_sq_send_wqe_1st {int wqe_size; void* length; void* inv_key_or_imm_data; } ;
struct rdma_sq_rdma_wqe_2nd {int dummy; } ;
struct rdma_sq_rdma_wqe_1st {int wqe_size; void* length; int imm_data; } ;
struct rdma_sq_local_inv_wqe {int wqe_size; int inv_l_key; int req_type; } ;
struct rdma_sq_fmr_wqe_1st {int wqe_size; } ;
struct rdma_sq_common_wqe {int prev_wqe_size; int req_type; scalar_t__ flags; } ;
struct rdma_sq_atomic_wqe_3rd {int cmp_data; int swap_data; } ;
struct rdma_sq_atomic_wqe_2nd {void* r_key; int remote_va; } ;
struct rdma_sq_atomic_wqe_1st {int wqe_size; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_10__ {TYPE_3__ data; } ;
struct TYPE_11__ {size_t prod; int pbl; TYPE_4__ db_data; } ;
struct qedr_qp {int prev_wqe_size; TYPE_5__ sq; TYPE_2__* wqe_wr_id; scalar_t__ signaled; } ;
struct qedr_dev {int ibdev; } ;
struct TYPE_7__ {int invalidate_rkey; int imm_data; } ;
struct ib_send_wr {int send_flags; int opcode; TYPE_1__ ex; } ;
struct ib_qp {int device; } ;
struct TYPE_12__ {int compare_add; int swap; int rkey; int remote_addr; } ;
struct TYPE_8__ {int signaled; int wqe_size; void* bytes_len; int opcode; } ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_DEBUG (struct qedr_dev*,int ,char*) ;
 int DP_ERR (struct qedr_dev*,char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 int IB_SEND_FENCE ;
 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;
 int QEDR_MSG_CQ ;
 int RDMA_SQ_RDMA_WQE_1ST_READ_INV_FLG ;
 int RDMA_SQ_REQ_TYPE_ATOMIC_ADD ;
 int RDMA_SQ_REQ_TYPE_ATOMIC_CMP_AND_SWAP ;
 int RDMA_SQ_REQ_TYPE_FAST_MR ;
 int RDMA_SQ_REQ_TYPE_LOCAL_INVALIDATE ;
 int RDMA_SQ_REQ_TYPE_RDMA_RD ;
 int RDMA_SQ_REQ_TYPE_RDMA_WR ;
 int RDMA_SQ_REQ_TYPE_RDMA_WR_WITH_IMM ;
 int RDMA_SQ_REQ_TYPE_SEND ;
 int RDMA_SQ_REQ_TYPE_SEND_WITH_IMM ;
 int RDMA_SQ_REQ_TYPE_SEND_WITH_INVALIDATE ;
 int RDMA_SQ_SEND_WQE_COMP_FLG ;
 int RDMA_SQ_SEND_WQE_RD_FENCE_FLG ;
 int RDMA_SQ_SEND_WQE_SE_FLG ;
 int SET_FIELD2 (scalar_t__,int ,int) ;
 TYPE_6__* atomic_wr (struct ib_send_wr const*) ;
 int be32_to_cpu (int ) ;
 void* cpu_to_le32 (int ) ;
 struct qedr_dev* get_qedr_dev (int ) ;
 struct qedr_qp* get_qedr_qp (struct ib_qp*) ;
 int htonl (void*) ;
 int le16_to_cpu (int ) ;
 void* qed_chain_produce (int *) ;
 int qed_chain_set_prod (int *,int ,struct rdma_sq_common_wqe*) ;
 int qedr_can_post_send (struct qedr_qp*,struct ib_send_wr const*) ;
 int qedr_ib_to_wc_opcode (int) ;
 int qedr_prepare_reg (struct qedr_qp*,struct rdma_sq_fmr_wqe_1st*,int ) ;
 int qedr_prepare_sq_rdma_data (struct qedr_dev*,struct qedr_qp*,struct rdma_sq_rdma_wqe_1st*,struct rdma_sq_rdma_wqe_2nd*,struct ib_send_wr const*,struct ib_send_wr const**) ;
 int qedr_prepare_sq_send_data (struct qedr_dev*,struct qedr_qp*,struct rdma_sq_send_wqe_1st*,struct rdma_sq_send_wqe_2st*,struct ib_send_wr const*,struct ib_send_wr const**) ;
 int qedr_prepare_sq_sges (struct qedr_qp*,int *,struct ib_send_wr const*) ;
 int rdma_protocol_iwarp (int *,int) ;
 int reg_wr (struct ib_send_wr const*) ;
 int unlikely (int ) ;

__attribute__((used)) static int __qedr_post_send(struct ib_qp *ibqp, const struct ib_send_wr *wr,
       const struct ib_send_wr **bad_wr)
{
 struct qedr_dev *dev = get_qedr_dev(ibqp->device);
 struct qedr_qp *qp = get_qedr_qp(ibqp);
 struct rdma_sq_atomic_wqe_1st *awqe1;
 struct rdma_sq_atomic_wqe_2nd *awqe2;
 struct rdma_sq_atomic_wqe_3rd *awqe3;
 struct rdma_sq_send_wqe_2st *swqe2;
 struct rdma_sq_local_inv_wqe *iwqe;
 struct rdma_sq_rdma_wqe_2nd *rwqe2;
 struct rdma_sq_send_wqe_1st *swqe;
 struct rdma_sq_rdma_wqe_1st *rwqe;
 struct rdma_sq_fmr_wqe_1st *fwqe1;
 struct rdma_sq_common_wqe *wqe;
 u32 length;
 int rc = 0;
 bool comp;

 if (!qedr_can_post_send(qp, wr)) {
  *bad_wr = wr;
  return -ENOMEM;
 }

 wqe = qed_chain_produce(&qp->sq.pbl);
 qp->wqe_wr_id[qp->sq.prod].signaled =
  !!(wr->send_flags & IB_SEND_SIGNALED) || qp->signaled;

 wqe->flags = 0;
 SET_FIELD2(wqe->flags, RDMA_SQ_SEND_WQE_SE_FLG,
     !!(wr->send_flags & IB_SEND_SOLICITED));
 comp = (!!(wr->send_flags & IB_SEND_SIGNALED)) || qp->signaled;
 SET_FIELD2(wqe->flags, RDMA_SQ_SEND_WQE_COMP_FLG, comp);
 SET_FIELD2(wqe->flags, RDMA_SQ_SEND_WQE_RD_FENCE_FLG,
     !!(wr->send_flags & IB_SEND_FENCE));
 wqe->prev_wqe_size = qp->prev_wqe_size;

 qp->wqe_wr_id[qp->sq.prod].opcode = qedr_ib_to_wc_opcode(wr->opcode);

 switch (wr->opcode) {
 case 129:
  if (unlikely(rdma_protocol_iwarp(&dev->ibdev, 1))) {
   rc = -EINVAL;
   *bad_wr = wr;
   break;
  }
  wqe->req_type = RDMA_SQ_REQ_TYPE_SEND_WITH_IMM;
  swqe = (struct rdma_sq_send_wqe_1st *)wqe;
  swqe->wqe_size = 2;
  swqe2 = qed_chain_produce(&qp->sq.pbl);

  swqe->inv_key_or_imm_data = cpu_to_le32(be32_to_cpu(wr->ex.imm_data));
  length = qedr_prepare_sq_send_data(dev, qp, swqe, swqe2,
         wr, bad_wr);
  swqe->length = cpu_to_le32(length);
  qp->wqe_wr_id[qp->sq.prod].wqe_size = swqe->wqe_size;
  qp->prev_wqe_size = swqe->wqe_size;
  qp->wqe_wr_id[qp->sq.prod].bytes_len = swqe->length;
  break;
 case 130:
  wqe->req_type = RDMA_SQ_REQ_TYPE_SEND;
  swqe = (struct rdma_sq_send_wqe_1st *)wqe;

  swqe->wqe_size = 2;
  swqe2 = qed_chain_produce(&qp->sq.pbl);
  length = qedr_prepare_sq_send_data(dev, qp, swqe, swqe2,
         wr, bad_wr);
  swqe->length = cpu_to_le32(length);
  qp->wqe_wr_id[qp->sq.prod].wqe_size = swqe->wqe_size;
  qp->prev_wqe_size = swqe->wqe_size;
  qp->wqe_wr_id[qp->sq.prod].bytes_len = swqe->length;
  break;
 case 128:
  wqe->req_type = RDMA_SQ_REQ_TYPE_SEND_WITH_INVALIDATE;
  swqe = (struct rdma_sq_send_wqe_1st *)wqe;
  swqe2 = qed_chain_produce(&qp->sq.pbl);
  swqe->wqe_size = 2;
  swqe->inv_key_or_imm_data = cpu_to_le32(wr->ex.invalidate_rkey);
  length = qedr_prepare_sq_send_data(dev, qp, swqe, swqe2,
         wr, bad_wr);
  swqe->length = cpu_to_le32(length);
  qp->wqe_wr_id[qp->sq.prod].wqe_size = swqe->wqe_size;
  qp->prev_wqe_size = swqe->wqe_size;
  qp->wqe_wr_id[qp->sq.prod].bytes_len = swqe->length;
  break;

 case 132:
  if (unlikely(rdma_protocol_iwarp(&dev->ibdev, 1))) {
   rc = -EINVAL;
   *bad_wr = wr;
   break;
  }
  wqe->req_type = RDMA_SQ_REQ_TYPE_RDMA_WR_WITH_IMM;
  rwqe = (struct rdma_sq_rdma_wqe_1st *)wqe;

  rwqe->wqe_size = 2;
  rwqe->imm_data = htonl(cpu_to_le32(wr->ex.imm_data));
  rwqe2 = qed_chain_produce(&qp->sq.pbl);
  length = qedr_prepare_sq_rdma_data(dev, qp, rwqe, rwqe2,
         wr, bad_wr);
  rwqe->length = cpu_to_le32(length);
  qp->wqe_wr_id[qp->sq.prod].wqe_size = rwqe->wqe_size;
  qp->prev_wqe_size = rwqe->wqe_size;
  qp->wqe_wr_id[qp->sq.prod].bytes_len = rwqe->length;
  break;
 case 133:
  wqe->req_type = RDMA_SQ_REQ_TYPE_RDMA_WR;
  rwqe = (struct rdma_sq_rdma_wqe_1st *)wqe;

  rwqe->wqe_size = 2;
  rwqe2 = qed_chain_produce(&qp->sq.pbl);
  length = qedr_prepare_sq_rdma_data(dev, qp, rwqe, rwqe2,
         wr, bad_wr);
  rwqe->length = cpu_to_le32(length);
  qp->wqe_wr_id[qp->sq.prod].wqe_size = rwqe->wqe_size;
  qp->prev_wqe_size = rwqe->wqe_size;
  qp->wqe_wr_id[qp->sq.prod].bytes_len = rwqe->length;
  break;
 case 134:
  SET_FIELD2(wqe->flags, RDMA_SQ_RDMA_WQE_1ST_READ_INV_FLG, 1);


 case 135:
  wqe->req_type = RDMA_SQ_REQ_TYPE_RDMA_RD;
  rwqe = (struct rdma_sq_rdma_wqe_1st *)wqe;

  rwqe->wqe_size = 2;
  rwqe2 = qed_chain_produce(&qp->sq.pbl);
  length = qedr_prepare_sq_rdma_data(dev, qp, rwqe, rwqe2,
         wr, bad_wr);
  rwqe->length = cpu_to_le32(length);
  qp->wqe_wr_id[qp->sq.prod].wqe_size = rwqe->wqe_size;
  qp->prev_wqe_size = rwqe->wqe_size;
  qp->wqe_wr_id[qp->sq.prod].bytes_len = rwqe->length;
  break;

 case 138:
 case 137:
  awqe1 = (struct rdma_sq_atomic_wqe_1st *)wqe;
  awqe1->wqe_size = 4;

  awqe2 = qed_chain_produce(&qp->sq.pbl);
  DMA_REGPAIR_LE(awqe2->remote_va, atomic_wr(wr)->remote_addr);
  awqe2->r_key = cpu_to_le32(atomic_wr(wr)->rkey);

  awqe3 = qed_chain_produce(&qp->sq.pbl);

  if (wr->opcode == 137) {
   wqe->req_type = RDMA_SQ_REQ_TYPE_ATOMIC_ADD;
   DMA_REGPAIR_LE(awqe3->swap_data,
           atomic_wr(wr)->compare_add);
  } else {
   wqe->req_type = RDMA_SQ_REQ_TYPE_ATOMIC_CMP_AND_SWAP;
   DMA_REGPAIR_LE(awqe3->swap_data,
           atomic_wr(wr)->swap);
   DMA_REGPAIR_LE(awqe3->cmp_data,
           atomic_wr(wr)->compare_add);
  }

  qedr_prepare_sq_sges(qp, ((void*)0), wr);

  qp->wqe_wr_id[qp->sq.prod].wqe_size = awqe1->wqe_size;
  qp->prev_wqe_size = awqe1->wqe_size;
  break;

 case 136:
  iwqe = (struct rdma_sq_local_inv_wqe *)wqe;
  iwqe->wqe_size = 1;

  iwqe->req_type = RDMA_SQ_REQ_TYPE_LOCAL_INVALIDATE;
  iwqe->inv_l_key = wr->ex.invalidate_rkey;
  qp->wqe_wr_id[qp->sq.prod].wqe_size = iwqe->wqe_size;
  qp->prev_wqe_size = iwqe->wqe_size;
  break;
 case 131:
  DP_DEBUG(dev, QEDR_MSG_CQ, "REG_MR\n");
  wqe->req_type = RDMA_SQ_REQ_TYPE_FAST_MR;
  fwqe1 = (struct rdma_sq_fmr_wqe_1st *)wqe;
  fwqe1->wqe_size = 2;

  rc = qedr_prepare_reg(qp, fwqe1, reg_wr(wr));
  if (rc) {
   DP_ERR(dev, "IB_REG_MR failed rc=%d\n", rc);
   *bad_wr = wr;
   break;
  }

  qp->wqe_wr_id[qp->sq.prod].wqe_size = fwqe1->wqe_size;
  qp->prev_wqe_size = fwqe1->wqe_size;
  break;
 default:
  DP_ERR(dev, "invalid opcode 0x%x!\n", wr->opcode);
  rc = -EINVAL;
  *bad_wr = wr;
  break;
 }

 if (*bad_wr) {
  u16 value;




  value = le16_to_cpu(qp->sq.db_data.data.value);
  qed_chain_set_prod(&qp->sq.pbl, value, wqe);


  qp->prev_wqe_size = wqe->prev_wqe_size;
  rc = -EINVAL;
  DP_ERR(dev, "POST SEND FAILED\n");
 }

 return rc;
}
