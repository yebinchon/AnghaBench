
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_netdev {int (* set_id ) (struct net_device*,int ) ;} ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int pkey; int flags; int pkey_index; int port; int ca; } ;


 int IPOIB_PKEY_ASSIGNED ;
 int clear_bit (int ,int *) ;
 scalar_t__ ib_find_pkey (int ,int ,int,int *) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 struct rdma_netdev* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct net_device*,int ) ;

void ipoib_pkey_dev_check_presence(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct rdma_netdev *rn = netdev_priv(dev);

 if (!(priv->pkey & 0x7fff) ||
     ib_find_pkey(priv->ca, priv->port, priv->pkey,
    &priv->pkey_index)) {
  clear_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
 } else {
  if (rn->set_id)
   rn->set_id(dev, priv->pkey_index);
  set_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
 }
}
