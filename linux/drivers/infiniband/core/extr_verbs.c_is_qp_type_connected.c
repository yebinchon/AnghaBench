
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {scalar_t__ qp_type; } ;


 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_UC ;
 scalar_t__ IB_QPT_XRC_INI ;
 scalar_t__ IB_QPT_XRC_TGT ;

__attribute__((used)) static bool is_qp_type_connected(const struct ib_qp *qp)
{
 return (qp->qp_type == IB_QPT_UC ||
  qp->qp_type == IB_QPT_RC ||
  qp->qp_type == IB_QPT_XRC_INI ||
  qp->qp_type == IB_QPT_XRC_TGT);
}
