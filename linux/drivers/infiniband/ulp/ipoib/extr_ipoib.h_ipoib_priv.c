
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_netdev {struct ipoib_dev_priv* clnt_priv; } ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;


 struct rdma_netdev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static inline struct ipoib_dev_priv *ipoib_priv(const struct net_device *dev)
{
 struct rdma_netdev *rn = netdev_priv(dev);

 return rn->clnt_priv;
}
