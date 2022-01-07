
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdma_netdev {struct ipoib_dev_priv* clnt_priv; struct ib_device* hca; int detach_mcast; int attach_mcast; int send; } ;
struct net_device {int * priv_destructor; int * netdev_ops; } ;
struct ipoib_dev_priv {int * next_priv_destructor; int * rn_ops; int port; struct ib_device* ca; } ;
struct TYPE_2__ {int device_cap_flags; } ;
struct ib_device {TYPE_1__ attrs; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IB_DEVICE_VIRTUAL_FUNCTION ;
 int NET_NAME_UNKNOWN ;
 int RDMA_NETDEV_IPOIB ;
 int ipoib_build_priv (struct net_device*) ;
 int ipoib_mcast_attach ;
 int ipoib_mcast_detach ;
 int ipoib_netdev_default_pf ;
 int ipoib_netdev_ops_pf ;
 int ipoib_netdev_ops_vf ;
 int ipoib_send ;
 int ipoib_setup_common ;
 int kfree (struct ipoib_dev_priv*) ;
 struct ipoib_dev_priv* kzalloc (int,int ) ;
 struct rdma_netdev* netdev_priv (struct net_device*) ;
 int rdma_init_netdev (struct ib_device*,int ,int ,char const*,int ,int ,struct net_device*) ;

int ipoib_intf_init(struct ib_device *hca, u8 port, const char *name,
      struct net_device *dev)
{
 struct rdma_netdev *rn = netdev_priv(dev);
 struct ipoib_dev_priv *priv;
 int rc;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->ca = hca;
 priv->port = port;

 rc = rdma_init_netdev(hca, port, RDMA_NETDEV_IPOIB, name,
         NET_NAME_UNKNOWN, ipoib_setup_common, dev);
 if (rc) {
  if (rc != -EOPNOTSUPP)
   goto out;

  dev->netdev_ops = &ipoib_netdev_default_pf;
  rn->send = ipoib_send;
  rn->attach_mcast = ipoib_mcast_attach;
  rn->detach_mcast = ipoib_mcast_detach;
  rn->hca = hca;
 }

 priv->rn_ops = dev->netdev_ops;

 if (hca->attrs.device_cap_flags & IB_DEVICE_VIRTUAL_FUNCTION)
  dev->netdev_ops = &ipoib_netdev_ops_vf;
 else
  dev->netdev_ops = &ipoib_netdev_ops_pf;

 rn->clnt_priv = priv;





 priv->next_priv_destructor = dev->priv_destructor;
 dev->priv_destructor = ((void*)0);

 ipoib_build_priv(dev);

 return 0;

out:
 kfree(priv);
 return rc;
}
