
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_netdev {int dummy; } ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct net_device* ERR_PTR (int ) ;
 int IS_ERR (struct net_device*) ;
 int NET_NAME_UNKNOWN ;
 int PTR_ERR (struct net_device*) ;
 int RDMA_NETDEV_IPOIB ;
 struct net_device* alloc_netdev (int,char const*,int ,int ) ;
 int ipoib_setup_common ;
 struct net_device* rdma_alloc_netdev (struct ib_device*,int ,int ,char const*,int ,int ) ;

__attribute__((used)) static struct net_device *ipoib_alloc_netdev(struct ib_device *hca, u8 port,
          const char *name)
{
 struct net_device *dev;

 dev = rdma_alloc_netdev(hca, port, RDMA_NETDEV_IPOIB, name,
    NET_NAME_UNKNOWN, ipoib_setup_common);
 if (!IS_ERR(dev) || PTR_ERR(dev) != -EOPNOTSUPP)
  return dev;

 dev = alloc_netdev(sizeof(struct rdma_netdev), name, NET_NAME_UNKNOWN,
      ipoib_setup_common);
 if (!dev)
  return ERR_PTR(-ENOMEM);
 return dev;
}
