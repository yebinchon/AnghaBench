
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40iw_upload_context_info {int freeze_qp; int raw_format; int qp_type; int qp_id; int buf_pa; } ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; } ;
struct i40iw_sc_cqp {int polarity; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_UCTX_FREEZEQP ;
 int I40IW_CQPSQ_UCTX_QPID ;
 int I40IW_CQPSQ_UCTX_QPTYPE ;
 int I40IW_CQPSQ_UCTX_RAWFORMAT ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_UPLOAD_CONTEXT ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int i40iw_debug_buf (struct i40iw_sc_dev*,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_qp_upload_context(
     struct i40iw_sc_dev *dev,
     struct i40iw_upload_context_info *info,
     u64 scratch,
     bool post_sq)
{
 u64 *wqe;
 struct i40iw_sc_cqp *cqp;
 u64 header;

 cqp = dev->cqp;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 set_64bit_val(wqe, 16, info->buf_pa);

 header = LS_64(info->qp_id, I40IW_CQPSQ_UCTX_QPID) |
   LS_64(I40IW_CQP_OP_UPLOAD_CONTEXT, I40IW_CQPSQ_OPCODE) |
   LS_64(info->qp_type, I40IW_CQPSQ_UCTX_QPTYPE) |
   LS_64(info->raw_format, I40IW_CQPSQ_UCTX_RAWFORMAT) |
   LS_64(info->freeze_qp, I40IW_CQPSQ_UCTX_FREEZEQP) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(dev, I40IW_DEBUG_WQE, "QP_UPLOAD_CTX WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
