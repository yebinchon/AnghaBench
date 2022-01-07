
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_23__ ;
typedef struct TYPE_37__ TYPE_22__ ;
typedef struct TYPE_36__ TYPE_21__ ;
typedef struct TYPE_35__ TYPE_20__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_19__ ;
typedef struct TYPE_32__ TYPE_18__ ;
typedef struct TYPE_31__ TYPE_17__ ;
typedef struct TYPE_30__ TYPE_16__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef void* u64 ;
struct TYPE_24__ {int invalidate_rkey; } ;
struct ib_send_wr {int send_flags; int opcode; struct ib_send_wr* next; void* wr_id; TYPE_10__ ex; TYPE_17__* sg_list; int num_sge; } ;
struct ib_qp {int dummy; } ;
struct i40iw_sge {int dummy; } ;
struct i40iw_sc_dev {TYPE_15__* iw_priv_qp_ops; } ;
struct TYPE_30__ {int (* iw_inline_send ) (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int ,int) ;int (* iw_send ) (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int ,int) ;int (* iw_inline_rdma_write ) (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int) ;int (* iw_rdma_write ) (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int) ;int (* iw_rdma_read ) (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int,int) ;int (* iw_stag_local_invalidate ) (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int) ;int (* iw_qp_post_wr ) (struct i40iw_qp_uk*) ;} ;
struct i40iw_qp_uk {TYPE_16__ ops; } ;
struct TYPE_36__ {struct i40iw_qp_uk qp_uk; } ;
struct i40iw_qp {int lock; TYPE_21__ sc_qp; TYPE_12__* iwdev; scalar_t__ sig_all; scalar_t__ flush_issued; } ;
struct TYPE_46__ {int target_stag; } ;
struct TYPE_44__ {int len; int stag; scalar_t__ tag_off; } ;
struct TYPE_43__ {int stag; int tag_off; } ;
struct TYPE_45__ {TYPE_7__ lo_addr; TYPE_6__ rem_addr; } ;
struct TYPE_41__ {int stag; int tag_off; } ;
struct TYPE_42__ {TYPE_4__ rem_addr; int num_lo_sges; void* lo_sg_list; } ;
struct TYPE_39__ {int stag; int tag_off; } ;
struct TYPE_40__ {TYPE_2__ rem_addr; int len; void* data; } ;
struct TYPE_34__ {struct i40iw_sge* sg_list; int num_sges; } ;
struct TYPE_33__ {int len; void* data; } ;
struct TYPE_32__ {TYPE_9__ inv_local_stag; TYPE_8__ rdma_read; TYPE_5__ rdma_write; TYPE_3__ inline_rdma_write; TYPE_1__ send; TYPE_19__ inline_send; } ;
struct i40iw_post_sq_info {int signaled; int read_fence; int stag_key; int stag_idx; int local_fence; int chunk_size; int first_pm_pbl_index; void* reg_addr_pa; int total_len; void* va; int addr_type; void* wr_id; int page_size; int access_rights; TYPE_18__ op; int op_type; } ;
struct TYPE_28__ {int idx; scalar_t__ addr; } ;
struct i40iw_pble_alloc {TYPE_14__ level1; } ;
struct TYPE_27__ {int length; int iova; } ;
struct TYPE_25__ {struct i40iw_pble_alloc pble_alloc; } ;
struct i40iw_mr {int npages; TYPE_13__ ibmr; TYPE_11__ iwpbl; } ;
struct i40iw_fast_reg_stag_info {int signaled; int read_fence; int stag_key; int stag_idx; int local_fence; int chunk_size; int first_pm_pbl_index; void* reg_addr_pa; int total_len; void* va; int addr_type; void* wr_id; int page_size; int access_rights; TYPE_18__ op; int op_type; } ;
typedef int info ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_38__ {int rkey; int remote_addr; } ;
struct TYPE_37__ {int access; int key; TYPE_20__* mr; } ;
struct TYPE_35__ {int page_size; } ;
struct TYPE_31__ {int length; int lkey; scalar_t__ addr; } ;
struct TYPE_29__ {int (* iw_mr_fast_register ) (TYPE_21__*,struct i40iw_post_sq_info*,int) ;} ;
struct TYPE_26__ {struct i40iw_sc_dev sc_dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int I40IW_ACCESS_FLAGS_LOCALREAD ;
 int I40IW_ADDR_TYPE_VA_BASED ;
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ;
 int I40IW_MAX_SGE_RD ;
 int I40IW_MIN_PAGES_PER_FMR ;
 int I40IW_OP_TYPE_INV_STAG ;
 int I40IW_OP_TYPE_RDMA_READ ;
 int I40IW_OP_TYPE_RDMA_WRITE ;
 int I40IW_OP_TYPE_SEND ;
 int I40IW_OP_TYPE_SEND_INV ;
 int I40IW_OP_TYPE_SEND_SOL ;
 int I40IW_OP_TYPE_SEND_SOL_INV ;
 int IB_SEND_FENCE ;
 int IB_SEND_INLINE ;
 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;







 int i40iw_get_user_access (int) ;
 int i40iw_pr_err (char*,int const) ;
 int memset (struct i40iw_post_sq_info*,int ,int) ;
 TYPE_23__* rdma_wr (struct ib_send_wr const*) ;
 TYPE_22__* reg_wr (struct ib_send_wr const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int ,int) ;
 int stub2 (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int ,int) ;
 int stub3 (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int) ;
 int stub4 (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int) ;
 int stub5 (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int,int) ;
 int stub6 (struct i40iw_qp_uk*,struct i40iw_post_sq_info*,int) ;
 int stub7 (TYPE_21__*,struct i40iw_post_sq_info*,int) ;
 int stub8 (struct i40iw_qp_uk*) ;
 struct i40iw_mr* to_iwmr (TYPE_20__*) ;

__attribute__((used)) static int i40iw_post_send(struct ib_qp *ibqp,
      const struct ib_send_wr *ib_wr,
      const struct ib_send_wr **bad_wr)
{
 struct i40iw_qp *iwqp;
 struct i40iw_qp_uk *ukqp;
 struct i40iw_post_sq_info info;
 enum i40iw_status_code ret;
 int err = 0;
 unsigned long flags;
 bool inv_stag;

 iwqp = (struct i40iw_qp *)ibqp;
 ukqp = &iwqp->sc_qp.qp_uk;

 spin_lock_irqsave(&iwqp->lock, flags);

 if (iwqp->flush_issued) {
  err = -EINVAL;
  goto out;
 }

 while (ib_wr) {
  inv_stag = 0;
  memset(&info, 0, sizeof(info));
  info.wr_id = (u64)(ib_wr->wr_id);
  if ((ib_wr->send_flags & IB_SEND_SIGNALED) || iwqp->sig_all)
   info.signaled = 1;
  if (ib_wr->send_flags & IB_SEND_FENCE)
   info.read_fence = 1;

  switch (ib_wr->opcode) {
  case 129:

  case 128:
   if (ib_wr->opcode == 129) {
    if (ib_wr->send_flags & IB_SEND_SOLICITED)
     info.op_type = I40IW_OP_TYPE_SEND_SOL;
    else
     info.op_type = I40IW_OP_TYPE_SEND;
   } else {
    if (ib_wr->send_flags & IB_SEND_SOLICITED)
     info.op_type = I40IW_OP_TYPE_SEND_SOL_INV;
    else
     info.op_type = I40IW_OP_TYPE_SEND_INV;
   }

   if (ib_wr->send_flags & IB_SEND_INLINE) {
    info.op.inline_send.data = (void *)(unsigned long)ib_wr->sg_list[0].addr;
    info.op.inline_send.len = ib_wr->sg_list[0].length;
    ret = ukqp->ops.iw_inline_send(ukqp, &info, ib_wr->ex.invalidate_rkey, 0);
   } else {
    info.op.send.num_sges = ib_wr->num_sge;
    info.op.send.sg_list = (struct i40iw_sge *)ib_wr->sg_list;
    ret = ukqp->ops.iw_send(ukqp, &info, ib_wr->ex.invalidate_rkey, 0);
   }

   if (ret) {
    if (ret == I40IW_ERR_QP_TOOMANY_WRS_POSTED)
     err = -ENOMEM;
    else
     err = -EINVAL;
   }
   break;
  case 131:
   info.op_type = I40IW_OP_TYPE_RDMA_WRITE;

   if (ib_wr->send_flags & IB_SEND_INLINE) {
    info.op.inline_rdma_write.data = (void *)(unsigned long)ib_wr->sg_list[0].addr;
    info.op.inline_rdma_write.len = ib_wr->sg_list[0].length;
    info.op.inline_rdma_write.rem_addr.tag_off = rdma_wr(ib_wr)->remote_addr;
    info.op.inline_rdma_write.rem_addr.stag = rdma_wr(ib_wr)->rkey;
    ret = ukqp->ops.iw_inline_rdma_write(ukqp, &info, 0);
   } else {
    info.op.rdma_write.lo_sg_list = (void *)ib_wr->sg_list;
    info.op.rdma_write.num_lo_sges = ib_wr->num_sge;
    info.op.rdma_write.rem_addr.tag_off = rdma_wr(ib_wr)->remote_addr;
    info.op.rdma_write.rem_addr.stag = rdma_wr(ib_wr)->rkey;
    ret = ukqp->ops.iw_rdma_write(ukqp, &info, 0);
   }

   if (ret) {
    if (ret == I40IW_ERR_QP_TOOMANY_WRS_POSTED)
     err = -ENOMEM;
    else
     err = -EINVAL;
   }
   break;
  case 132:
   inv_stag = 1;

  case 133:
   if (ib_wr->num_sge > I40IW_MAX_SGE_RD) {
    err = -EINVAL;
    break;
   }
   info.op_type = I40IW_OP_TYPE_RDMA_READ;
   info.op.rdma_read.rem_addr.tag_off = rdma_wr(ib_wr)->remote_addr;
   info.op.rdma_read.rem_addr.stag = rdma_wr(ib_wr)->rkey;
   info.op.rdma_read.lo_addr.tag_off = ib_wr->sg_list->addr;
   info.op.rdma_read.lo_addr.stag = ib_wr->sg_list->lkey;
   info.op.rdma_read.lo_addr.len = ib_wr->sg_list->length;
   ret = ukqp->ops.iw_rdma_read(ukqp, &info, inv_stag, 0);
   if (ret) {
    if (ret == I40IW_ERR_QP_TOOMANY_WRS_POSTED)
     err = -ENOMEM;
    else
     err = -EINVAL;
   }
   break;
  case 134:
   info.op_type = I40IW_OP_TYPE_INV_STAG;
   info.op.inv_local_stag.target_stag = ib_wr->ex.invalidate_rkey;
   ret = ukqp->ops.iw_stag_local_invalidate(ukqp, &info, 1);
   if (ret)
    err = -ENOMEM;
   break;
  case 130:
  {
   struct i40iw_mr *iwmr = to_iwmr(reg_wr(ib_wr)->mr);
   int flags = reg_wr(ib_wr)->access;
   struct i40iw_pble_alloc *palloc = &iwmr->iwpbl.pble_alloc;
   struct i40iw_sc_dev *dev = &iwqp->iwdev->sc_dev;
   struct i40iw_fast_reg_stag_info info;

   memset(&info, 0, sizeof(info));
   info.access_rights = I40IW_ACCESS_FLAGS_LOCALREAD;
   info.access_rights |= i40iw_get_user_access(flags);
   info.stag_key = reg_wr(ib_wr)->key & 0xff;
   info.stag_idx = reg_wr(ib_wr)->key >> 8;
   info.page_size = reg_wr(ib_wr)->mr->page_size;
   info.wr_id = ib_wr->wr_id;

   info.addr_type = I40IW_ADDR_TYPE_VA_BASED;
   info.va = (void *)(uintptr_t)iwmr->ibmr.iova;
   info.total_len = iwmr->ibmr.length;
   info.reg_addr_pa = *(u64 *)palloc->level1.addr;
   info.first_pm_pbl_index = palloc->level1.idx;
   info.local_fence = ib_wr->send_flags & IB_SEND_FENCE;
   info.signaled = ib_wr->send_flags & IB_SEND_SIGNALED;

   if (iwmr->npages > I40IW_MIN_PAGES_PER_FMR)
    info.chunk_size = 1;

   ret = dev->iw_priv_qp_ops->iw_mr_fast_register(&iwqp->sc_qp, &info, 1);
   if (ret)
    err = -ENOMEM;
   break;
  }
  default:
   err = -EINVAL;
   i40iw_pr_err(" upost_send bad opcode = 0x%x\n",
         ib_wr->opcode);
   break;
  }

  if (err)
   break;
  ib_wr = ib_wr->next;
 }

out:
 if (err)
  *bad_wr = ib_wr;
 else
  ukqp->ops.iw_qp_post_wr(ukqp);
 spin_unlock_irqrestore(&iwqp->lock, flags);

 return err;
}
