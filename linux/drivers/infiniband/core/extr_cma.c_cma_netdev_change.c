
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rdma_dev_addr {scalar_t__ bound_dev_if; int src_dev_addr; int net; } ;
struct TYPE_5__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct TYPE_8__ {TYPE_2__ route; } ;
struct rdma_id_private {int refcount; TYPE_4__ id; } ;
struct net_device {scalar_t__ ifindex; int name; int addr_len; int dev_addr; } ;
struct TYPE_7__ {int event; } ;
struct cma_ndev_work {int work; TYPE_3__ event; struct rdma_id_private* id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int RDMA_CM_EVENT_ADDR_CHANGE ;
 int atomic_inc (int *) ;
 int cma_ndev_work_handler ;
 int cma_wq ;
 int dev_net (struct net_device*) ;
 struct cma_ndev_work* kzalloc (int,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ net_eq (int ,int ) ;
 int pr_info (char*,int ,TYPE_4__*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int cma_netdev_change(struct net_device *ndev, struct rdma_id_private *id_priv)
{
 struct rdma_dev_addr *dev_addr;
 struct cma_ndev_work *work;

 dev_addr = &id_priv->id.route.addr.dev_addr;

 if ((dev_addr->bound_dev_if == ndev->ifindex) &&
     (net_eq(dev_net(ndev), dev_addr->net)) &&
     memcmp(dev_addr->src_dev_addr, ndev->dev_addr, ndev->addr_len)) {
  pr_info("RDMA CM addr change for ndev %s used by id %p\n",
   ndev->name, &id_priv->id);
  work = kzalloc(sizeof *work, GFP_KERNEL);
  if (!work)
   return -ENOMEM;

  INIT_WORK(&work->work, cma_ndev_work_handler);
  work->id = id_priv;
  work->event.event = RDMA_CM_EVENT_ADDR_CHANGE;
  atomic_inc(&id_priv->refcount);
  queue_work(cma_wq, &work->work);
 }

 return 0;
}
