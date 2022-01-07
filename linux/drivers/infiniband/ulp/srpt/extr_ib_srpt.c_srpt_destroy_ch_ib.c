
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_rdma_ch {int cq; int qp; } ;


 int ib_destroy_qp (int ) ;
 int ib_free_cq (int ) ;

__attribute__((used)) static void srpt_destroy_ch_ib(struct srpt_rdma_ch *ch)
{
 ib_destroy_qp(ch->qp);
 ib_free_cq(ch->cq);
}
