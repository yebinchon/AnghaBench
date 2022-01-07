
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef uintptr_t u32 ;
struct i40iw_qp_uk {int swqe_polarity; TYPE_1__* sq_base; } ;
struct i40iw_sc_qp {int dev; struct i40iw_qp_uk qp_uk; } ;
struct TYPE_2__ {int* elem; } ;


 int I40IWQPSQ_OPCODE ;
 int I40IWQPSQ_STREAMMODE ;
 int I40IWQPSQ_VALID ;
 int I40IWQPSQ_WAITFORRCVPDU ;
 int I40IWQP_OP_RDMA_SEND ;
 int I40IW_DEBUG_WQE ;
 int I40IW_QP_WQE_MIN_SIZE ;
 int LS_64 (int,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int ) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int set_64bit_val (int*,int,uintptr_t) ;

__attribute__((used)) static void i40iw_sc_send_lsmm_nostag(struct i40iw_sc_qp *qp,
          void *lsmm_buf,
          u32 size)
{
 u64 *wqe;
 u64 header;
 struct i40iw_qp_uk *qp_uk;

 qp_uk = &qp->qp_uk;
 wqe = qp_uk->sq_base->elem;

 set_64bit_val(wqe, 0, (uintptr_t)lsmm_buf);

 set_64bit_val(wqe, 8, size);

 set_64bit_val(wqe, 16, 0);

 header = LS_64(I40IWQP_OP_RDMA_SEND, I40IWQPSQ_OPCODE) |
   LS_64(1, I40IWQPSQ_STREAMMODE) |
   LS_64(1, I40IWQPSQ_WAITFORRCVPDU) |
   LS_64(qp->qp_uk.swqe_polarity, I40IWQPSQ_VALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(qp->dev, I40IW_DEBUG_WQE, "SEND_LSMM_NOSTAG WQE",
   wqe, I40IW_QP_WQE_MIN_SIZE);
}
