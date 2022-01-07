
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ib_gid_attr {int dummy; } ;
struct TYPE_5__ {struct ib_gid_attr* sgid_attr; } ;
struct TYPE_4__ {struct ib_gid_attr* ppath_sgid_attr; } ;
struct TYPE_6__ {TYPE_2__ sidr_req_rcvd; TYPE_1__ req_rcvd; } ;
struct ib_cm_event {scalar_t__ event; TYPE_3__ param; } ;


 scalar_t__ IB_CM_REQ_RECEIVED ;
 scalar_t__ IB_CM_SIDR_REQ_RECEIVED ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int dev_hold (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net_device* rdma_read_gid_attr_ndev_rcu (struct ib_gid_attr const*) ;

__attribute__((used)) static struct net_device *
roce_get_net_dev_by_cm_event(const struct ib_cm_event *ib_event)
{
 const struct ib_gid_attr *sgid_attr = ((void*)0);
 struct net_device *ndev;

 if (ib_event->event == IB_CM_REQ_RECEIVED)
  sgid_attr = ib_event->param.req_rcvd.ppath_sgid_attr;
 else if (ib_event->event == IB_CM_SIDR_REQ_RECEIVED)
  sgid_attr = ib_event->param.sidr_req_rcvd.sgid_attr;

 if (!sgid_attr)
  return ((void*)0);

 rcu_read_lock();
 ndev = rdma_read_gid_attr_ndev_rcu(sgid_attr);
 if (IS_ERR(ndev))
  ndev = ((void*)0);
 else
  dev_hold(ndev);
 rcu_read_unlock();
 return ndev;
}
