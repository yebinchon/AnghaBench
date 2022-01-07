
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_netdev {int * clnt_priv; } ;
struct net_device {int (* priv_destructor ) (struct net_device*) ;} ;
struct ipoib_dev_priv {int (* next_priv_destructor ) (struct net_device*) ;} ;


 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int kfree (struct ipoib_dev_priv*) ;
 struct rdma_netdev* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;

void ipoib_intf_free(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct rdma_netdev *rn = netdev_priv(dev);

 dev->priv_destructor = priv->next_priv_destructor;
 if (dev->priv_destructor)
  dev->priv_destructor(dev);





 dev->priv_destructor = ((void*)0);


 rn->clnt_priv = ((void*)0);

 kfree(priv);
}
