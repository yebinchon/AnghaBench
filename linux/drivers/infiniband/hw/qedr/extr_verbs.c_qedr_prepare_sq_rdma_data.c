
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rdma_sq_rdma_wqe_2nd {int remote_va; int r_key; } ;
struct rdma_sq_rdma_wqe_1st {int wqe_size; int flags; } ;
struct qedr_qp {int dummy; } ;
struct qedr_dev {int dummy; } ;
struct ib_send_wr {int send_flags; scalar_t__ opcode; } ;
struct TYPE_2__ {int remote_addr; int rkey; } ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int IB_SEND_INLINE ;
 scalar_t__ IB_WR_RDMA_WRITE ;
 scalar_t__ IB_WR_RDMA_WRITE_WITH_IMM ;
 int RDMA_SQ_RDMA_WQE_1ST_INLINE_FLG ;
 int SET_FIELD2 (int ,int ,int) ;
 int cpu_to_le32 (int ) ;
 int qedr_prepare_sq_inline_data (struct qedr_dev*,struct qedr_qp*,int *,struct ib_send_wr const*,struct ib_send_wr const**,int *,int ) ;
 int qedr_prepare_sq_sges (struct qedr_qp*,int *,struct ib_send_wr const*) ;
 TYPE_1__* rdma_wr (struct ib_send_wr const*) ;

__attribute__((used)) static u32 qedr_prepare_sq_rdma_data(struct qedr_dev *dev,
         struct qedr_qp *qp,
         struct rdma_sq_rdma_wqe_1st *rwqe,
         struct rdma_sq_rdma_wqe_2nd *rwqe2,
         const struct ib_send_wr *wr,
         const struct ib_send_wr **bad_wr)
{
 rwqe2->r_key = cpu_to_le32(rdma_wr(wr)->rkey);
 DMA_REGPAIR_LE(rwqe2->remote_va, rdma_wr(wr)->remote_addr);

 if (wr->send_flags & IB_SEND_INLINE &&
     (wr->opcode == IB_WR_RDMA_WRITE_WITH_IMM ||
      wr->opcode == IB_WR_RDMA_WRITE)) {
  u8 flags = 0;

  SET_FIELD2(flags, RDMA_SQ_RDMA_WQE_1ST_INLINE_FLG, 1);
  return qedr_prepare_sq_inline_data(dev, qp, &rwqe->wqe_size, wr,
         bad_wr, &rwqe->flags, flags);
 }

 return qedr_prepare_sq_sges(qp, &rwqe->wqe_size, wr);
}
