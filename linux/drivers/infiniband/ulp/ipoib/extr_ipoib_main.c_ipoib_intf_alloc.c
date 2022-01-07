
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 struct net_device* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 struct net_device* ipoib_alloc_netdev (struct ib_device*,int ,char const*) ;
 int ipoib_intf_init (struct ib_device*,int ,char const*,struct net_device*) ;

struct net_device *ipoib_intf_alloc(struct ib_device *hca, u8 port,
        const char *name)
{
 struct net_device *dev;
 int rc;

 dev = ipoib_alloc_netdev(hca, port, name);
 if (IS_ERR(dev))
  return dev;

 rc = ipoib_intf_init(hca, port, name, dev);
 if (rc) {
  free_netdev(dev);
  return ERR_PTR(rc);
 }






 return dev;
}
