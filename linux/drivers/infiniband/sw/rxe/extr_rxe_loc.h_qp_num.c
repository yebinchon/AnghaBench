
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qp_num; } ;
struct rxe_qp {TYPE_1__ ibqp; } ;



__attribute__((used)) static inline int qp_num(struct rxe_qp *qp)
{
 return qp->ibqp.qp_num;
}
