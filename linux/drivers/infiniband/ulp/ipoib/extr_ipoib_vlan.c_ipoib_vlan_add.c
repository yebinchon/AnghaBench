
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ reg_state; } ;
struct ipoib_dev_priv {int port; int ca; TYPE_1__* dev; } ;
typedef int intf_name ;
struct TYPE_2__ {char* name; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;
 int IFNAMSIZ ;
 int IPOIB_LEGACY_CHILD ;
 scalar_t__ IS_ERR (struct net_device*) ;
 scalar_t__ NETREG_REGISTERED ;
 scalar_t__ NETREG_UNINITIALIZED ;
 int PTR_ERR (struct net_device*) ;
 int __ipoib_vlan_add (struct ipoib_dev_priv*,struct ipoib_dev_priv*,unsigned short,int ) ;
 int capable (int ) ;
 int free_netdev (struct net_device*) ;
 struct net_device* ipoib_intf_alloc (int ,int ,char*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int restart_syscall () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 int snprintf (char*,int,char*,char*,unsigned short) ;

int ipoib_vlan_add(struct net_device *pdev, unsigned short pkey)
{
 struct ipoib_dev_priv *ppriv, *priv;
 char intf_name[IFNAMSIZ];
 struct net_device *ndev;
 int result;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (!rtnl_trylock())
  return restart_syscall();

 if (pdev->reg_state != NETREG_REGISTERED) {
  rtnl_unlock();
  return -EPERM;
 }

 ppriv = ipoib_priv(pdev);

 snprintf(intf_name, sizeof(intf_name), "%s.%04x",
   ppriv->dev->name, pkey);

 ndev = ipoib_intf_alloc(ppriv->ca, ppriv->port, intf_name);
 if (IS_ERR(ndev)) {
  result = PTR_ERR(ndev);
  goto out;
 }
 priv = ipoib_priv(ndev);

 result = __ipoib_vlan_add(ppriv, priv, pkey, IPOIB_LEGACY_CHILD);

 if (result && ndev->reg_state == NETREG_UNINITIALIZED)
  free_netdev(ndev);

out:
 rtnl_unlock();

 return result;
}
