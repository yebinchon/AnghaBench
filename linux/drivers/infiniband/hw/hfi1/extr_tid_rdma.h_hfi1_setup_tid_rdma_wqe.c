
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opcode; } ;
struct rvt_swqe {scalar_t__ length; TYPE_1__ wr; scalar_t__ priv; } ;
struct rvt_qp {int dummy; } ;


 scalar_t__ IB_WR_RDMA_READ ;
 scalar_t__ IB_WR_RDMA_WRITE ;
 scalar_t__ TID_RDMA_MIN_SEGMENT_SIZE ;
 int setup_tid_rdma_wqe (struct rvt_qp*,struct rvt_swqe*) ;

__attribute__((used)) static inline void hfi1_setup_tid_rdma_wqe(struct rvt_qp *qp,
        struct rvt_swqe *wqe)
{
 if (wqe->priv &&
     (wqe->wr.opcode == IB_WR_RDMA_READ ||
      wqe->wr.opcode == IB_WR_RDMA_WRITE) &&
     wqe->length >= TID_RDMA_MIN_SEGMENT_SIZE)
  setup_tid_rdma_wqe(qp, wqe);
}
