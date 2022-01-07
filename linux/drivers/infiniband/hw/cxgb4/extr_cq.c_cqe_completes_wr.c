
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qid; } ;
struct t4_wq {TYPE_1__ sq; } ;
struct t4_cqe {int dummy; } ;


 scalar_t__ CQE_OPCODE (struct t4_cqe*) ;
 scalar_t__ CQE_SEND_OPCODE (struct t4_cqe*) ;
 scalar_t__ DRAIN_CQE (struct t4_cqe*) ;
 scalar_t__ FW_RI_RDMA_WRITE ;
 scalar_t__ FW_RI_READ_RESP ;
 scalar_t__ FW_RI_TERMINATE ;
 scalar_t__ RQ_TYPE (struct t4_cqe*) ;
 scalar_t__ SQ_TYPE (struct t4_cqe*) ;
 int WARN_ONCE (int,char*,int ) ;
 scalar_t__ t4_rq_empty (struct t4_wq*) ;

__attribute__((used)) static int cqe_completes_wr(struct t4_cqe *cqe, struct t4_wq *wq)
{
 if (DRAIN_CQE(cqe)) {
  WARN_ONCE(1, "Unexpected DRAIN CQE qp id %u!\n", wq->sq.qid);
  return 0;
 }

 if (CQE_OPCODE(cqe) == FW_RI_TERMINATE)
  return 0;

 if ((CQE_OPCODE(cqe) == FW_RI_RDMA_WRITE) && RQ_TYPE(cqe))
  return 0;

 if ((CQE_OPCODE(cqe) == FW_RI_READ_RESP) && SQ_TYPE(cqe))
  return 0;

 if (CQE_SEND_OPCODE(cqe) && RQ_TYPE(cqe) && t4_rq_empty(wq))
  return 0;
 return 1;
}
