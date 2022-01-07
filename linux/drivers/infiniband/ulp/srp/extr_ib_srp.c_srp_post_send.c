
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct srp_target_port {int lkey; } ;
struct srp_rdma_ch {int qp; struct srp_target_port* target; } ;
struct TYPE_3__ {int done; } ;
struct srp_iu {scalar_t__ num_sge; TYPE_2__* sge; TYPE_1__ cqe; int dma; } ;
struct ib_send_wr {scalar_t__ num_sge; int send_flags; int opcode; TYPE_2__* sg_list; TYPE_1__* wr_cqe; int * next; } ;
struct TYPE_4__ {int length; int lkey; int addr; } ;


 int EINVAL ;
 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 scalar_t__ SRP_MAX_SGE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int srp_send_done ;

__attribute__((used)) static int srp_post_send(struct srp_rdma_ch *ch, struct srp_iu *iu, int len)
{
 struct srp_target_port *target = ch->target;
 struct ib_send_wr wr;

 if (WARN_ON_ONCE(iu->num_sge > SRP_MAX_SGE))
  return -EINVAL;

 iu->sge[0].addr = iu->dma;
 iu->sge[0].length = len;
 iu->sge[0].lkey = target->lkey;

 iu->cqe.done = srp_send_done;

 wr.next = ((void*)0);
 wr.wr_cqe = &iu->cqe;
 wr.sg_list = &iu->sge[0];
 wr.num_sge = iu->num_sge;
 wr.opcode = IB_WR_SEND;
 wr.send_flags = IB_SEND_SIGNALED;

 return ib_post_send(ch->qp, &wr, ((void*)0));
}
