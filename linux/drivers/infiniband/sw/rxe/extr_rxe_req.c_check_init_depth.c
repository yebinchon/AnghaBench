
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_send_wqe {int has_rd_atomic; } ;
struct TYPE_2__ {int need_rd_atomic; int rd_atomic; } ;
struct rxe_qp {TYPE_1__ req; } ;


 int EAGAIN ;
 int atomic_dec_return (int *) ;
 int atomic_inc (int *) ;

__attribute__((used)) static inline int check_init_depth(struct rxe_qp *qp, struct rxe_send_wqe *wqe)
{
 int depth;

 if (wqe->has_rd_atomic)
  return 0;

 qp->req.need_rd_atomic = 1;
 depth = atomic_dec_return(&qp->req.rd_atomic);

 if (depth >= 0) {
  qp->req.need_rd_atomic = 0;
  wqe->has_rd_atomic = 1;
  return 0;
 }

 atomic_inc(&qp->req.rd_atomic);
 return -EAGAIN;
}
