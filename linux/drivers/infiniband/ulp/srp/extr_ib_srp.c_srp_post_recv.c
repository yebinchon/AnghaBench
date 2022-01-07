
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_target_port {int lkey; } ;
struct srp_rdma_ch {int qp; struct srp_target_port* target; } ;
struct TYPE_2__ {int done; } ;
struct srp_iu {TYPE_1__ cqe; int size; int dma; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct ib_recv_wr {int num_sge; struct ib_sge* sg_list; TYPE_1__* wr_cqe; int * next; } ;


 int ib_post_recv (int ,struct ib_recv_wr*,int *) ;
 int srp_recv_done ;

__attribute__((used)) static int srp_post_recv(struct srp_rdma_ch *ch, struct srp_iu *iu)
{
 struct srp_target_port *target = ch->target;
 struct ib_recv_wr wr;
 struct ib_sge list;

 list.addr = iu->dma;
 list.length = iu->size;
 list.lkey = target->lkey;

 iu->cqe.done = srp_recv_done;

 wr.next = ((void*)0);
 wr.wr_cqe = &iu->cqe;
 wr.sg_list = &list;
 wr.num_sge = 1;

 return ib_post_recv(ch->qp, &wr, ((void*)0));
}
