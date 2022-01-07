
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_3__ {scalar_t__ tail; scalar_t__ head; } ;
struct ocrdma_qp {TYPE_2__ rq; TYPE_1__ sq; } ;



__attribute__((used)) static void ocrdma_init_hwq_ptr(struct ocrdma_qp *qp)
{
 qp->sq.head = 0;
 qp->sq.tail = 0;
 qp->rq.head = 0;
 qp->rq.tail = 0;
}
