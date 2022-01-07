
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct rvt_qp {int port_num; scalar_t__ state; } ;
struct rvt_mcast_qp {int dummy; } ;
struct rvt_mcast {int dummy; } ;
struct rvt_ibport {int dummy; } ;
struct rvt_dev_info {struct rvt_ibport** ports; } ;
struct ib_qp {int qp_num; int device; } ;






 scalar_t__ IB_QPS_RESET ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_qp* ibqp_to_rvtqp (struct ib_qp*) ;
 int rvt_mcast_add (struct rvt_dev_info*,struct rvt_ibport*,struct rvt_mcast*,struct rvt_mcast_qp*) ;
 struct rvt_mcast* rvt_mcast_alloc (union ib_gid*,int ) ;
 int rvt_mcast_free (struct rvt_mcast*) ;
 struct rvt_mcast_qp* rvt_mcast_qp_alloc (struct rvt_qp*) ;
 int rvt_mcast_qp_free (struct rvt_mcast_qp*) ;

int rvt_attach_mcast(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
 struct rvt_qp *qp = ibqp_to_rvtqp(ibqp);
 struct rvt_dev_info *rdi = ib_to_rvt(ibqp->device);
 struct rvt_ibport *ibp = rdi->ports[qp->port_num - 1];
 struct rvt_mcast *mcast;
 struct rvt_mcast_qp *mqp;
 int ret = -129;

 if (ibqp->qp_num <= 1 || qp->state == IB_QPS_RESET)
  return -130;





 mcast = rvt_mcast_alloc(gid, lid);
 if (!mcast)
  return -129;

 mqp = rvt_mcast_qp_alloc(qp);
 if (!mqp)
  goto bail_mcast;

 switch (rvt_mcast_add(rdi, ibp, mcast, mqp)) {
 case 128:

  ret = 0;
  goto bail_mqp;
 case 131:
  ret = 0;
  goto bail_mcast;
 case 129:

  ret = -129;
  goto bail_mqp;
 case 130:

  ret = -130;
  goto bail_mqp;
 default:
  break;
 }

 return 0;

bail_mqp:
 rvt_mcast_qp_free(mqp);

bail_mcast:
 rvt_mcast_free(mcast);

 return ret;
}
