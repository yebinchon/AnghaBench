
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int path_mtu; } ;
struct TYPE_3__ {scalar_t__ qp_type; } ;
struct rxe_qp {TYPE_2__ attr; TYPE_1__ ibqp; } ;


 int IB_MTU_4096 ;
 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_UC ;

__attribute__((used)) static inline int qp_mtu(struct rxe_qp *qp)
{
 if (qp->ibqp.qp_type == IB_QPT_RC || qp->ibqp.qp_type == IB_QPT_UC)
  return qp->attr.path_mtu;
 else
  return IB_MTU_4096;
}
