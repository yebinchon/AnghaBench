
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct i40iw_qp_uk {int swqe_polarity; TYPE_1__* sq_base; } ;
struct i40iw_sc_qp {int dev; struct i40iw_qp_uk qp_uk; } ;
struct TYPE_2__ {int* elem; } ;


 int I40IWQPSQ_OPCODE ;
 int I40IWQPSQ_REMSTAG ;
 int I40IWQPSQ_VALID ;
 int I40IWQP_OP_RDMA_READ ;
 int I40IWQP_OP_RDMA_WRITE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_QP_WQE_MIN_SIZE ;
 int LS_64 (int,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int ) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int set_64bit_val (int*,int,int) ;

__attribute__((used)) static void i40iw_sc_send_rtt(struct i40iw_sc_qp *qp, bool read)
{
 u64 *wqe;
 u64 header;
 struct i40iw_qp_uk *qp_uk;

 qp_uk = &qp->qp_uk;
 wqe = qp_uk->sq_base->elem;

 set_64bit_val(wqe, 0, 0);
 set_64bit_val(wqe, 8, 0);
 set_64bit_val(wqe, 16, 0);
 if (read) {
  header = LS_64(0x1234, I40IWQPSQ_REMSTAG) |
    LS_64(I40IWQP_OP_RDMA_READ, I40IWQPSQ_OPCODE) |
    LS_64(qp->qp_uk.swqe_polarity, I40IWQPSQ_VALID);
  set_64bit_val(wqe, 8, ((u64)0xabcd << 32));
 } else {
  header = LS_64(I40IWQP_OP_RDMA_WRITE, I40IWQPSQ_OPCODE) |
    LS_64(qp->qp_uk.swqe_polarity, I40IWQPSQ_VALID);
 }

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(qp->dev, I40IW_DEBUG_WQE, "RTR WQE",
   wqe, I40IW_QP_WQE_MIN_SIZE);
}
