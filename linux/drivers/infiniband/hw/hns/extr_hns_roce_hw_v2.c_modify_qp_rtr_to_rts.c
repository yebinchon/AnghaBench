
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {scalar_t__ qp_type; int device; } ;
struct hns_roce_v2_qp_context {int byte_196_sq_psn; int byte_212_lsn; int byte_248_ack_psn; int byte_220_retry_psn_msn; int byte_240_irrl_tail; int byte_232_irrl_sge; void* rx_sq_cur_blk_addr; int byte_184_irrl_idx; void* sq_cur_sge_blk_addr; int byte_168_irrl_idx; void* sq_cur_blk_addr; } ;
struct TYPE_6__ {scalar_t__ max_gs; } ;
struct TYPE_5__ {int offset; } ;
struct hns_roce_qp {int qpn; TYPE_3__ sq; TYPE_2__ sge; int mtr; } ;
struct TYPE_4__ {int mtt_buf_pg_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE ;
 scalar_t__ IB_QPT_GSI ;
 int IB_QP_ALT_PATH ;
 int IB_QP_PATH_MIG_STATE ;
 int PAGE_ADDR_SHIFT ;
 int PAGE_SHIFT ;
 int V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_M ;
 int V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_S ;
 int V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_M ;
 int V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_S ;
 int V2_QPC_BYTE_196_IRRL_HEAD_M ;
 int V2_QPC_BYTE_196_IRRL_HEAD_S ;
 int V2_QPC_BYTE_212_CHECK_FLG_M ;
 int V2_QPC_BYTE_212_CHECK_FLG_S ;
 int V2_QPC_BYTE_212_LSN_M ;
 int V2_QPC_BYTE_212_LSN_S ;
 int V2_QPC_BYTE_220_RETRY_MSG_MSN_M ;
 int V2_QPC_BYTE_220_RETRY_MSG_MSN_S ;
 int V2_QPC_BYTE_232_IRRL_SGE_IDX_M ;
 int V2_QPC_BYTE_232_IRRL_SGE_IDX_S ;
 int V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_M ;
 int V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_S ;
 int V2_QPC_BYTE_240_IRRL_TAIL_REAL_M ;
 int V2_QPC_BYTE_240_IRRL_TAIL_REAL_S ;
 int V2_QPC_BYTE_240_RX_ACK_MSN_M ;
 int V2_QPC_BYTE_240_RX_ACK_MSN_S ;
 int V2_QPC_BYTE_248_ACK_LAST_OPTYPE_M ;
 int V2_QPC_BYTE_248_ACK_LAST_OPTYPE_S ;
 int V2_QPC_BYTE_248_IRRL_PSN_M ;
 int V2_QPC_BYTE_248_IRRL_PSN_S ;
 int V2_QPC_BYTE_248_IRRL_PSN_VLD_S ;
 int V2_QPC_BYTE_248_RNR_RETRY_FLAG_S ;
 void* cpu_to_le32 (int) ;
 int dev_err (struct device*,char*,int) ;
 int hns_roce_mtr_find (struct hns_roce_dev*,int *,int,int*,int,int *) ;
 int roce_set_bit (int ,int ,int ) ;
 int roce_set_field (int ,int ,int ,int) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 struct hns_roce_qp* to_hr_qp (struct ib_qp*) ;

__attribute__((used)) static int modify_qp_rtr_to_rts(struct ib_qp *ibqp,
    const struct ib_qp_attr *attr, int attr_mask,
    struct hns_roce_v2_qp_context *context,
    struct hns_roce_v2_qp_context *qpc_mask)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibqp->device);
 struct hns_roce_qp *hr_qp = to_hr_qp(ibqp);
 struct device *dev = hr_dev->dev;
 u64 sge_cur_blk = 0;
 u64 sq_cur_blk = 0;
 u32 page_size;
 int count;


 count = hns_roce_mtr_find(hr_dev, &hr_qp->mtr, 0, &sq_cur_blk, 1, ((void*)0));
 if (count < 1) {
  dev_err(dev, "qp(0x%lx) buf pa find failed\n", hr_qp->qpn);
  return -EINVAL;
 }

 if (hr_qp->sge.offset) {
  page_size = 1 << (hr_dev->caps.mtt_buf_pg_sz + PAGE_SHIFT);
  count = hns_roce_mtr_find(hr_dev, &hr_qp->mtr,
       hr_qp->sge.offset / page_size,
       &sge_cur_blk, 1, ((void*)0));
  if (count < 1) {
   dev_err(dev, "qp(0x%lx) sge pa find failed\n",
    hr_qp->qpn);
   return -EINVAL;
  }
 }


 if ((attr_mask & IB_QP_ALT_PATH) ||
     (attr_mask & IB_QP_PATH_MIG_STATE)) {
  dev_err(dev, "RTR2RTS attr_mask (0x%x)error\n", attr_mask);
  return -EINVAL;
 }







 context->sq_cur_blk_addr = cpu_to_le32(sq_cur_blk >> PAGE_ADDR_SHIFT);
 roce_set_field(context->byte_168_irrl_idx,
         V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_M,
         V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_S,
         sq_cur_blk >> (32 + PAGE_ADDR_SHIFT));
 qpc_mask->sq_cur_blk_addr = 0;
 roce_set_field(qpc_mask->byte_168_irrl_idx,
         V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_M,
         V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_S, 0);

 context->sq_cur_sge_blk_addr = ((ibqp->qp_type == IB_QPT_GSI) ||
         hr_qp->sq.max_gs > HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE) ?
         cpu_to_le32(sge_cur_blk >>
         PAGE_ADDR_SHIFT) : 0;
 roce_set_field(context->byte_184_irrl_idx,
         V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_M,
         V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_S,
         ((ibqp->qp_type == IB_QPT_GSI) || hr_qp->sq.max_gs >
         HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE) ?
         (sge_cur_blk >>
         (32 + PAGE_ADDR_SHIFT)) : 0);
 qpc_mask->sq_cur_sge_blk_addr = 0;
 roce_set_field(qpc_mask->byte_184_irrl_idx,
         V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_M,
         V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_S, 0);

 context->rx_sq_cur_blk_addr =
  cpu_to_le32(sq_cur_blk >> PAGE_ADDR_SHIFT);
 roce_set_field(context->byte_232_irrl_sge,
         V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_M,
         V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_S,
         sq_cur_blk >> (32 + PAGE_ADDR_SHIFT));
 qpc_mask->rx_sq_cur_blk_addr = 0;
 roce_set_field(qpc_mask->byte_232_irrl_sge,
         V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_M,
         V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_S, 0);






 roce_set_field(qpc_mask->byte_232_irrl_sge,
         V2_QPC_BYTE_232_IRRL_SGE_IDX_M,
         V2_QPC_BYTE_232_IRRL_SGE_IDX_S, 0);

 roce_set_field(qpc_mask->byte_240_irrl_tail,
         V2_QPC_BYTE_240_RX_ACK_MSN_M,
         V2_QPC_BYTE_240_RX_ACK_MSN_S, 0);

 roce_set_field(qpc_mask->byte_248_ack_psn,
         V2_QPC_BYTE_248_ACK_LAST_OPTYPE_M,
         V2_QPC_BYTE_248_ACK_LAST_OPTYPE_S, 0);
 roce_set_bit(qpc_mask->byte_248_ack_psn,
       V2_QPC_BYTE_248_IRRL_PSN_VLD_S, 0);
 roce_set_field(qpc_mask->byte_248_ack_psn,
         V2_QPC_BYTE_248_IRRL_PSN_M,
         V2_QPC_BYTE_248_IRRL_PSN_S, 0);

 roce_set_field(qpc_mask->byte_240_irrl_tail,
         V2_QPC_BYTE_240_IRRL_TAIL_REAL_M,
         V2_QPC_BYTE_240_IRRL_TAIL_REAL_S, 0);

 roce_set_field(qpc_mask->byte_220_retry_psn_msn,
         V2_QPC_BYTE_220_RETRY_MSG_MSN_M,
         V2_QPC_BYTE_220_RETRY_MSG_MSN_S, 0);

 roce_set_bit(qpc_mask->byte_248_ack_psn,
       V2_QPC_BYTE_248_RNR_RETRY_FLAG_S, 0);

 roce_set_field(qpc_mask->byte_212_lsn, V2_QPC_BYTE_212_CHECK_FLG_M,
         V2_QPC_BYTE_212_CHECK_FLG_S, 0);

 roce_set_field(context->byte_212_lsn, V2_QPC_BYTE_212_LSN_M,
         V2_QPC_BYTE_212_LSN_S, 0x100);
 roce_set_field(qpc_mask->byte_212_lsn, V2_QPC_BYTE_212_LSN_M,
         V2_QPC_BYTE_212_LSN_S, 0);

 roce_set_field(qpc_mask->byte_196_sq_psn, V2_QPC_BYTE_196_IRRL_HEAD_M,
         V2_QPC_BYTE_196_IRRL_HEAD_S, 0);

 return 0;
}
