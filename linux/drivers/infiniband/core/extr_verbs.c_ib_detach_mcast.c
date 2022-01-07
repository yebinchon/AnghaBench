
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ib_gid {scalar_t__ raw; } ;
typedef int u16 ;
struct in6_addr {int dummy; } ;
struct ib_qp {scalar_t__ qp_type; int usecnt; TYPE_2__* device; } ;
struct TYPE_3__ {int (* detach_mcast ) (struct ib_qp*,union ib_gid*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IB_QPT_UD ;
 int atomic_dec (int *) ;
 int is_valid_mcast_lid (struct ib_qp*,int ) ;
 int rdma_is_multicast_addr (struct in6_addr*) ;
 int stub1 (struct ib_qp*,union ib_gid*,int ) ;

int ib_detach_mcast(struct ib_qp *qp, union ib_gid *gid, u16 lid)
{
 int ret;

 if (!qp->device->ops.detach_mcast)
  return -EOPNOTSUPP;

 if (!rdma_is_multicast_addr((struct in6_addr *)gid->raw) ||
     qp->qp_type != IB_QPT_UD || !is_valid_mcast_lid(qp, lid))
  return -EINVAL;

 ret = qp->device->ops.detach_mcast(qp, gid, lid);
 if (!ret)
  atomic_dec(&qp->usecnt);
 return ret;
}
