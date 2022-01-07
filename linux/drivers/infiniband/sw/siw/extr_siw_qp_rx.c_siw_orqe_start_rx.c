
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_sge; int flags; TYPE_1__* sge; int opcode; int id; } ;
struct siw_wqe {int wr_status; int ** mem; scalar_t__ processed; int bytes; TYPE_2__ sqe; } ;
struct siw_sqe {TYPE_3__* sge; int flags; int opcode; int id; } ;
struct siw_qp {int rx_tagged; } ;
struct TYPE_6__ {int length; int lkey; int laddr; } ;
struct TYPE_4__ {int length; int lkey; int laddr; } ;


 int EPROTO ;
 int READ_ONCE (int ) ;
 int SIW_WQE_VALID ;
 int SIW_WR_INPROGRESS ;
 struct siw_sqe* orq_get_current (struct siw_qp*) ;
 struct siw_wqe* rx_wqe (int *) ;
 int smp_mb () ;
 int smp_wmb () ;

__attribute__((used)) static int siw_orqe_start_rx(struct siw_qp *qp)
{
 struct siw_sqe *orqe;
 struct siw_wqe *wqe = ((void*)0);


 smp_mb();

 orqe = orq_get_current(qp);
 if (READ_ONCE(orqe->flags) & SIW_WQE_VALID) {

  wqe = rx_wqe(&qp->rx_tagged);
  wqe->sqe.id = orqe->id;
  wqe->sqe.opcode = orqe->opcode;
  wqe->sqe.sge[0].laddr = orqe->sge[0].laddr;
  wqe->sqe.sge[0].lkey = orqe->sge[0].lkey;
  wqe->sqe.sge[0].length = orqe->sge[0].length;
  wqe->sqe.flags = orqe->flags;
  wqe->sqe.num_sge = 1;
  wqe->bytes = orqe->sge[0].length;
  wqe->processed = 0;
  wqe->mem[0] = ((void*)0);

  smp_wmb();
  wqe->wr_status = SIW_WR_INPROGRESS;

  return 0;
 }
 return -EPROTO;
}
