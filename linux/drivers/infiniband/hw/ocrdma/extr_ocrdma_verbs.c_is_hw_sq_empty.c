
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; } ;
struct ocrdma_qp {TYPE_1__ sq; } ;



__attribute__((used)) static int is_hw_sq_empty(struct ocrdma_qp *qp)
{
 return (qp->sq.tail == qp->sq.head);
}
