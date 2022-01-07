
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cq {int iop; } ;


 int irq_poll_sched (int *) ;

__attribute__((used)) static void ib_cq_completion_softirq(struct ib_cq *cq, void *private)
{
 irq_poll_sched(&cq->iop);
}
