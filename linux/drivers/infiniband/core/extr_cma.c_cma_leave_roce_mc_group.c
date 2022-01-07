
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rdma_dev_addr {scalar_t__ bound_dev_if; int net; } ;
struct TYPE_10__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_11__ {TYPE_4__ addr; } ;
struct TYPE_12__ {TYPE_5__ route; } ;
struct rdma_id_private {TYPE_6__ id; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {TYPE_2__* ib; } ;
struct cma_multicast {int mcref; TYPE_3__ multicast; } ;
struct TYPE_7__ {int mgid; } ;
struct TYPE_8__ {TYPE_1__ rec; } ;


 int cma_igmp_send (struct net_device*,int *,int) ;
 struct net_device* dev_get_by_index (int ,scalar_t__) ;
 int dev_put (struct net_device*) ;
 int kref_put (int *,int ) ;
 int release_mc ;

__attribute__((used)) static void cma_leave_roce_mc_group(struct rdma_id_private *id_priv,
        struct cma_multicast *mc)
{
 struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
 struct net_device *ndev = ((void*)0);

 if (dev_addr->bound_dev_if)
  ndev = dev_get_by_index(dev_addr->net, dev_addr->bound_dev_if);
 if (ndev) {
  cma_igmp_send(ndev, &mc->multicast.ib->rec.mgid, 0);
  dev_put(ndev);
 }
 kref_put(&mc->mcref, release_mc);
}
