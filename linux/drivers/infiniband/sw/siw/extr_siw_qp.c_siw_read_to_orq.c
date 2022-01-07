
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_sqe {int flags; int num_sge; TYPE_1__* sge; int opcode; int id; } ;
struct TYPE_2__ {int lkey; int length; int laddr; } ;


 int SIW_WQE_VALID ;

void siw_read_to_orq(struct siw_sqe *rreq, struct siw_sqe *sqe)
{
 rreq->id = sqe->id;
 rreq->opcode = sqe->opcode;
 rreq->sge[0].laddr = sqe->sge[0].laddr;
 rreq->sge[0].length = sqe->sge[0].length;
 rreq->sge[0].lkey = sqe->sge[0].lkey;
 rreq->sge[1].lkey = sqe->sge[1].lkey;
 rreq->flags = sqe->flags | SIW_WQE_VALID;
 rreq->num_sge = 1;
}
