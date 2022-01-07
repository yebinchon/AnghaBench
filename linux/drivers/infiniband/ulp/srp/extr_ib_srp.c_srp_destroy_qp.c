
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rdma_ch {int qp; int lock; int send_cq; } ;


 int ib_destroy_qp (int ) ;
 int ib_drain_qp (int ) ;
 int ib_process_cq_direct (int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void srp_destroy_qp(struct srp_rdma_ch *ch)
{
 spin_lock_irq(&ch->lock);
 ib_process_cq_direct(ch->send_cq, -1);
 spin_unlock_irq(&ch->lock);

 ib_drain_qp(ch->qp);
 ib_destroy_qp(ch->qp);
}
