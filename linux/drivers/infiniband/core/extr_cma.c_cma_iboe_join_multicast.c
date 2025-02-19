
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


struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_dev_addr {scalar_t__ bound_dev_if; int net; } ;
struct TYPE_8__ {int src_addr; struct rdma_dev_addr dev_addr; } ;
struct TYPE_9__ {TYPE_2__ addr; } ;
struct TYPE_10__ {size_t port_num; scalar_t__ ps; TYPE_3__ route; } ;
struct rdma_id_private {TYPE_4__ id; TYPE_1__* cma_dev; } ;
struct net_device {int mtu; } ;
struct TYPE_11__ {int hop_limit; int port_gid; int mtu; int mgid; int rate; int qkey; int pkey; } ;
struct iboe_mcast_work {int work; struct cma_multicast* mc; struct rdma_id_private* id; TYPE_5__ rec; } ;
struct ib_sa_multicast {int dummy; } ;
struct TYPE_12__ {struct iboe_mcast_work* ib; } ;
struct cma_multicast {scalar_t__ join_state; TYPE_6__ multicast; int mcref; int addr; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_7__ {int* default_gid_type; int device; } ;


 scalar_t__ AF_INET ;
 scalar_t__ BIT (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int IB_GID_TYPE_ROCE_UDP_ENCAP ;
 int INIT_WORK (int *,int ) ;
 int IPV6_DEFAULT_HOPLIMIT ;
 scalar_t__ RDMA_PS_UDP ;
 int RDMA_UDP_QKEY ;
 int SENDONLY_FULLMEMBER_JOIN ;
 int cma_iboe_set_mgid (struct sockaddr*,int *,int) ;
 int cma_igmp_send (struct net_device*,int *,int) ;
 int cma_wq ;
 scalar_t__ cma_zero_addr (struct sockaddr*) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 struct net_device* dev_get_by_index (int ,scalar_t__) ;
 int dev_put (struct net_device*) ;
 int iboe_get_mtu (int ) ;
 int iboe_get_rate (struct net_device*) ;
 int iboe_mcast_work_handler ;
 int kfree (struct iboe_mcast_work*) ;
 int kref_get (int *) ;
 void* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int rdma_ip2gid (struct sockaddr*,int *) ;
 size_t rdma_start_port (int ) ;

__attribute__((used)) static int cma_iboe_join_multicast(struct rdma_id_private *id_priv,
       struct cma_multicast *mc)
{
 struct iboe_mcast_work *work;
 struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
 int err = 0;
 struct sockaddr *addr = (struct sockaddr *)&mc->addr;
 struct net_device *ndev = ((void*)0);
 enum ib_gid_type gid_type;
 bool send_only;

 send_only = mc->join_state == BIT(SENDONLY_FULLMEMBER_JOIN);

 if (cma_zero_addr((struct sockaddr *)&mc->addr))
  return -EINVAL;

 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (!work)
  return -ENOMEM;

 mc->multicast.ib = kzalloc(sizeof(struct ib_sa_multicast), GFP_KERNEL);
 if (!mc->multicast.ib) {
  err = -ENOMEM;
  goto out1;
 }

 gid_type = id_priv->cma_dev->default_gid_type[id_priv->id.port_num -
     rdma_start_port(id_priv->cma_dev->device)];
 cma_iboe_set_mgid(addr, &mc->multicast.ib->rec.mgid, gid_type);

 mc->multicast.ib->rec.pkey = cpu_to_be16(0xffff);
 if (id_priv->id.ps == RDMA_PS_UDP)
  mc->multicast.ib->rec.qkey = cpu_to_be32(RDMA_UDP_QKEY);

 if (dev_addr->bound_dev_if)
  ndev = dev_get_by_index(dev_addr->net, dev_addr->bound_dev_if);
 if (!ndev) {
  err = -ENODEV;
  goto out2;
 }
 mc->multicast.ib->rec.rate = iboe_get_rate(ndev);
 mc->multicast.ib->rec.hop_limit = 1;
 mc->multicast.ib->rec.mtu = iboe_get_mtu(ndev->mtu);

 if (addr->sa_family == AF_INET) {
  if (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP) {
   mc->multicast.ib->rec.hop_limit = IPV6_DEFAULT_HOPLIMIT;
   if (!send_only) {
    err = cma_igmp_send(ndev, &mc->multicast.ib->rec.mgid,
          1);
   }
  }
 } else {
  if (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP)
   err = -ENOTSUPP;
 }
 dev_put(ndev);
 if (err || !mc->multicast.ib->rec.mtu) {
  if (!err)
   err = -EINVAL;
  goto out2;
 }
 rdma_ip2gid((struct sockaddr *)&id_priv->id.route.addr.src_addr,
      &mc->multicast.ib->rec.port_gid);
 work->id = id_priv;
 work->mc = mc;
 INIT_WORK(&work->work, iboe_mcast_work_handler);
 kref_get(&mc->mcref);
 queue_work(cma_wq, &work->work);

 return 0;

out2:
 kfree(mc->multicast.ib);
out1:
 kfree(work);
 return err;
}
