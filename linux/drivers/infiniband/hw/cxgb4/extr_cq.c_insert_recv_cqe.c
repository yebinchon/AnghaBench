
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int qid; } ;
struct t4_wq {TYPE_1__ sq; } ;
struct TYPE_5__ {void* abs_rqe_idx; } ;
struct TYPE_6__ {TYPE_2__ srcqe; } ;
struct t4_cqe {TYPE_3__ u; int bits_type_ts; void* header; } ;
struct t4_cq {size_t sw_pidx; struct t4_cqe* sw_queue; scalar_t__ gen; int sw_cidx; } ;
typedef int cqe ;


 int CQE_GENBIT_V (int ) ;
 int CQE_OPCODE_V (int ) ;
 int CQE_QPID_V (int ) ;
 int CQE_STATUS_V (int ) ;
 int CQE_SWCQE_V (int) ;
 int CQE_TYPE_V (int ) ;
 int FW_RI_SEND ;
 int T4_ERR_SWFLUSH ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memset (struct t4_cqe*,int ,int) ;
 int pr_debug (char*,struct t4_wq*,struct t4_cq*,int ,size_t) ;
 int t4_swcq_produce (struct t4_cq*) ;

__attribute__((used)) static void insert_recv_cqe(struct t4_wq *wq, struct t4_cq *cq, u32 srqidx)
{
 struct t4_cqe cqe;

 pr_debug("wq %p cq %p sw_cidx %u sw_pidx %u\n",
   wq, cq, cq->sw_cidx, cq->sw_pidx);
 memset(&cqe, 0, sizeof(cqe));
 cqe.header = cpu_to_be32(CQE_STATUS_V(T4_ERR_SWFLUSH) |
     CQE_OPCODE_V(FW_RI_SEND) |
     CQE_TYPE_V(0) |
     CQE_SWCQE_V(1) |
     CQE_QPID_V(wq->sq.qid));
 cqe.bits_type_ts = cpu_to_be64(CQE_GENBIT_V((u64)cq->gen));
 if (srqidx)
  cqe.u.srcqe.abs_rqe_idx = cpu_to_be32(srqidx);
 cq->sw_queue[cq->sw_pidx] = cqe;
 t4_swcq_produce(cq);
}
