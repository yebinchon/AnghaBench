
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct rxe_qp {int dummy; } ;
struct rxe_dev {int dummy; } ;
struct ib_qp {int device; } ;


 int rxe_mcast_drop_grp_elem (struct rxe_dev*,struct rxe_qp*,union ib_gid*) ;
 struct rxe_dev* to_rdev (int ) ;
 struct rxe_qp* to_rqp (struct ib_qp*) ;

__attribute__((used)) static int rxe_detach_mcast(struct ib_qp *ibqp, union ib_gid *mgid, u16 mlid)
{
 struct rxe_dev *rxe = to_rdev(ibqp->device);
 struct rxe_qp *qp = to_rqp(ibqp);

 return rxe_mcast_drop_grp_elem(rxe, qp, mgid);
}
