
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_sqe {int flags; } ;
struct TYPE_2__ {size_t sq_size; } ;
struct siw_qp {size_t sq_get; TYPE_1__ attrs; struct siw_sqe* sendq; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline int siw_sq_empty(struct siw_qp *qp)
{
 struct siw_sqe *sqe = &qp->sendq[qp->sq_get % qp->attrs.sq_size];

 return READ_ONCE(sqe->flags) == 0;
}
