
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ type; int name; } ;
struct net {int dummy; } ;
struct ipoib_dev_priv {int port; int ca; int pkey; int flags; } ;


 scalar_t__ ARPHRD_INFINIBAND ;
 int EINVAL ;
 int ENODEV ;
 size_t IFLA_IPOIB_PKEY ;
 size_t IFLA_LINK ;
 int IPOIB_FLAG_SUBINTERFACE ;
 int IPOIB_RTNL_CHILD ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 int __ipoib_vlan_add (struct ipoib_dev_priv*,struct ipoib_dev_priv*,int ,int ) ;
 int ipoib_changelink (struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_intf_init (int ,int ,int ,struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 scalar_t__ test_bit (int ,int *) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static int ipoib_new_child_link(struct net *src_net, struct net_device *dev,
    struct nlattr *tb[], struct nlattr *data[],
    struct netlink_ext_ack *extack)
{
 struct net_device *pdev;
 struct ipoib_dev_priv *ppriv;
 u16 child_pkey;
 int err;

 if (!tb[IFLA_LINK])
  return -EINVAL;

 pdev = __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
 if (!pdev || pdev->type != ARPHRD_INFINIBAND)
  return -ENODEV;

 ppriv = ipoib_priv(pdev);

 if (test_bit(IPOIB_FLAG_SUBINTERFACE, &ppriv->flags)) {
  ipoib_warn(ppriv, "child creation disallowed for child devices\n");
  return -EINVAL;
 }

 if (!data || !data[IFLA_IPOIB_PKEY]) {
  ipoib_dbg(ppriv, "no pkey specified, using parent pkey\n");
  child_pkey = ppriv->pkey;
 } else
  child_pkey = nla_get_u16(data[IFLA_IPOIB_PKEY]);

 err = ipoib_intf_init(ppriv->ca, ppriv->port, dev->name, dev);
 if (err) {
  ipoib_warn(ppriv, "failed to initialize pkey device\n");
  return err;
 }

 err = __ipoib_vlan_add(ppriv, ipoib_priv(dev),
          child_pkey, IPOIB_RTNL_CHILD);
 if (err)
  return err;

 if (data) {
  err = ipoib_changelink(dev, tb, data, extack);
  if (err) {
   unregister_netdevice(dev);
   return err;
  }
 }

 return 0;
}
