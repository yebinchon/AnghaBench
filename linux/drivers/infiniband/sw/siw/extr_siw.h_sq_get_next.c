
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_sqe {int flags; } ;
struct TYPE_2__ {size_t sq_size; } ;
struct siw_qp {size_t sq_get; TYPE_1__ attrs; struct siw_sqe* sendq; } ;


 int READ_ONCE (int ) ;
 int SIW_WQE_VALID ;

__attribute__((used)) static inline struct siw_sqe *sq_get_next(struct siw_qp *qp)
{
 struct siw_sqe *sqe = &qp->sendq[qp->sq_get % qp->attrs.sq_size];

 if (READ_ONCE(sqe->flags) & SIW_WQE_VALID)
  return sqe;

 return ((void*)0);
}
