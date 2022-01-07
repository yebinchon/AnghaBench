
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; int dev_addr; } ;
struct TYPE_3__ {int send_flags; } ;
struct TYPE_4__ {TYPE_1__ wr; } ;
struct ipoib_dev_priv {int mcast_mtu; int flags; TYPE_2__ tx_wr; } ;


 int EBUSY ;
 int EINVAL ;
 int IB_SEND_IP_CSUM ;
 scalar_t__ IPOIB_CM_SUPPORTED (int ) ;
 int IPOIB_FLAG_ADMIN_CM ;
 int clear_bit (int ,int *) ;
 int dev_set_mtu (struct net_device*,int ) ;
 int ipoib_cm_max_mtu (struct net_device*) ;
 int ipoib_flush_paths (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 int min (int ,int ) ;
 int netdev_update_features (struct net_device*) ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 int strcmp (char const*,char*) ;
 scalar_t__ test_bit (int ,int *) ;

int ipoib_set_mode(struct net_device *dev, const char *buf)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 if ((test_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags) &&
      !strcmp(buf, "connected\n")) ||
      (!test_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags) &&
      !strcmp(buf, "datagram\n"))) {
  return 0;
 }


 if (IPOIB_CM_SUPPORTED(dev->dev_addr) && !strcmp(buf, "connected\n")) {
  set_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags);
  ipoib_warn(priv, "enabling connected mode "
      "will cause multicast packet drops\n");
  netdev_update_features(dev);
  dev_set_mtu(dev, ipoib_cm_max_mtu(dev));
  rtnl_unlock();
  priv->tx_wr.wr.send_flags &= ~IB_SEND_IP_CSUM;

  ipoib_flush_paths(dev);
  return (!rtnl_trylock()) ? -EBUSY : 0;
 }

 if (!strcmp(buf, "datagram\n")) {
  clear_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags);
  netdev_update_features(dev);
  dev_set_mtu(dev, min(priv->mcast_mtu, dev->mtu));
  rtnl_unlock();
  ipoib_flush_paths(dev);
  return (!rtnl_trylock()) ? -EBUSY : 0;
 }

 return -EINVAL;
}
